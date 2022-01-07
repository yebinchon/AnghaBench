
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char
vt_vga2bsd(unsigned char vga)
{
 static const unsigned char lut[8] = {
  0,
  4,
  2,
  6,
  1,
  5,
  3,
  7,
 };
 unsigned int bright;

 bright = (vga & 0x8);
 return (lut[vga & 0x7] | bright);
}
