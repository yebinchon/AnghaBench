
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static uint32_t
utf8_to_ucs4(const char *src, size_t *utf8width, size_t srclen)
{
 size_t i, w = 0;
 uint32_t ucs4 = 0;




 if ((*src & 0x80) == 0) {





  w = 1;

  ucs4 = *src & 0x7f;
 } else if ((*src & 0xe0) == 0xc0) {





  w = 2;

  ucs4 = *src & 0x1f;
 } else if ((*src & 0xf0) == 0xe0) {





  w = 3;

  ucs4 = *src & 0x0f;
 } else if ((*src & 0xf8) == 0xf0) {





  w = 4;

  ucs4 = *src & 0x07;
 } else {

  return (0);
 }

 if (srclen < w)
  return (0);




 for (i = 1 ; i < w ; i++) {
  if ((*(src + i) & 0xc0) != 0x80) {

   return (0);
  }

  ucs4 <<= 6;
  ucs4 |= *(src + i) & 0x3f;
 }

 *utf8width = w;
 return (ucs4);
}
