`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/18 19:59:51
// Design Name: 
// Module Name: chaoqianadder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);
    assign sum = a ^ b ^ cin;  // XOR����ʵ��λ�ӷ�
    assign cout = (a & b) | (b & cin) | (cin & a);  // ��λ����
endmodule

module chaoqianadder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
    wire [3:0] c;

    // ʵ�����ӷ����ͽ�λģ��
    adder a0(a[0], b[0], cin, sum[0], c[0]);
    adder a1(a[1], b[1], c[0], sum[1], c[1]);
    adder a2(a[2], b[2], c[1], sum[2], c[2]);
    adder a3(a[3], b[3], c[2], sum[3], cout);

    // ���Ը�����Ҫ��Ӹ���ӷ���ʵ��

endmodule
