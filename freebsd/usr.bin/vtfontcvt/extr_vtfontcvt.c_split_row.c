
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int*,int*,int) ;
 int wbytes ;
 int width ;

__attribute__((used)) static int
split_row(uint8_t *left, uint8_t *right, uint8_t *line, size_t w)
{
 size_t s, i;

 s = wbytes * 8 - width;

 memcpy(left, line, wbytes);
 *(left + wbytes - 1) &= 0xFF << s;

 if (w > width) {
  uint8_t t;

  for (i = 0; i < wbytes; i++) {
   t = *(line + wbytes + i - 1);
   t <<= 8 - s;
   t |= *(line + wbytes + i) >> s;
   *(right + i) = t;
  }
  *(right + wbytes - 1) &= 0xFF << s;
 }
 return (0);
}
