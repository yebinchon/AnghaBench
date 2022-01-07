
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 unsigned char GMD0_SCLK ;
 unsigned char GMD0_SDI ;
 int outb (int ,unsigned char) ;

__attribute__((used)) static void ctg_output (port_t port, unsigned char val, unsigned char v0)
{
 int i;

 for (i=0; i<8; ++i) {
  unsigned char v = v0;
  if ((val >> i) & 1)
   v |= GMD0_SDI;
  outb (port, v);
  outb (port, v);
  outb (port, v);
  outb (port, v);
  outb (port, v | GMD0_SCLK);
  outb (port, v | GMD0_SCLK);
  outb (port, v | GMD0_SCLK);
  outb (port, v | GMD0_SCLK);
 }
 outb (port, v0);
}
