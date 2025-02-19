
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_xlat16 {int** d_table; } ;


 int C2I1 (int) ;
 int C2I2 (int) ;
 int XLAT16_HAS_LOWER_CASE ;

__attribute__((used)) static int
iconv_xlat16_tolower(void *d2p, int c)
{
        struct iconv_xlat16 *dp = (struct iconv_xlat16*)d2p;
 int c1, c2, out;

 if (c < 0x100) {
  c1 = C2I1(c << 8);
  c2 = C2I2(c << 8);
 } else if (c < 0x10000) {
                c1 = C2I1(c);
                c2 = C2I2(c);
 } else
  return (c);

 if (dp->d_table[c1] && dp->d_table[c1][c2] & XLAT16_HAS_LOWER_CASE) {

  out = dp->d_table[c1][c2] & 0xffff;
  if ((out & 0xff) == 0)
   out = (out >> 8) & 0xff;
  return (out);
 } else
  return (c);
}
