
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void cx_clock (long hz, long ba, int *clk, int *div)
{
 static short clocktab[] = { 8, 32, 128, 512, 2048, 0 };

 for (*clk=0; clocktab[*clk]; ++*clk) {
  long c = ba * clocktab[*clk];
  if (hz <= c*256) {
   *div = (2 * hz + c) / (2 * c) - 1;
   return;
  }
 }

 *clk = 0;
 *div = 255;
}
