
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;



__attribute__((used)) static u_char *
ucs4_to_utf8(uint32_t ucs4, char *dst, size_t *utf8width, size_t dstlen)
{
 u_char lead, *p;
 size_t i, w;




 if (ucs4 < 0x80) {
  w = 1;
  lead = 0;
 } else if (ucs4 < 0x800) {
  w = 2;
  lead = 0xc0;
 } else if (ucs4 < 0x10000) {
  w = 3;
  lead = 0xe0;
 } else if (ucs4 < 0x200000) {
  w = 4;
  lead = 0xf0;
 } else {
  return (((void*)0));
 }

 if (dstlen < w)
  return (((void*)0));




 p = dst;
 for (i = w - 1 ; i >= 1 ; i--) {

  *(p + i) = (ucs4 & 0x3f) | 0x80;
  ucs4 >>= 6;
 }
 *p = ucs4 | lead;

 *utf8width = w;

 return (p);
}
