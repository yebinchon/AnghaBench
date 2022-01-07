
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint8_t ;


 int show_mb (char const*) ;
 int werr (char*,int ) ;

int
towide_gb18030(wchar_t *wc, const char *mb, unsigned n)
{
 wchar_t c;

 c = *(const uint8_t *)mb;

 if ((c & 0x80) == 0) {

  *wc = c;
  return (1);
 }
 if (n < 2) {
  werr("incomplete character sequence (%s)", show_mb(mb));
  return (-1);
 }


 c <<= 8;
 c |= (uint8_t)(mb[1]);

 if (((c & 0xff) >= 0x30) && ((c & 0xff) <= 0x39)) {
  if (n < 4) {
   werr("incomplete 4-byte character sequence (%s)",
       show_mb(mb));
   return (-1);
  }
  c <<= 8;
  c |= (uint8_t)(mb[2]);
  c <<= 8;
  c |= (uint8_t)(mb[3]);
  *wc = c;
  return (4);
 }

 *wc = c;
 return (2);
}
