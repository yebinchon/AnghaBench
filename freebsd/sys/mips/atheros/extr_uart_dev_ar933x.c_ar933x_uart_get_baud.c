
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static unsigned long
ar933x_uart_get_baud(unsigned int clk, unsigned int scale,
    unsigned int step)
{
 uint64_t t;
 uint32_t div;

 div = (2 << 16) * (scale + 1);
 t = clk;
 t *= step;
 t += (div / 2);
 t = t / div;

 return (t);
}
