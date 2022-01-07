
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint8_t ;


 int show_mb (char const*) ;
 int werr (char*,int ) ;

__attribute__((used)) static int
towide_euc_impl(wchar_t *wc, const char *mb, unsigned n,
    uint8_t cs2, uint8_t cs2width, uint8_t cs3, uint8_t cs3width)
{
 int i;
 int width = 2;
 wchar_t c;

 c = *(const uint8_t *)mb;





 if ((c & 0x80) == 0) {

  *wc = c;
  return (1);
 }







 if (c >= 0xa1) {
  width = 2;
 } else if (c == cs2) {
  width = cs2width;
 } else if (c == cs3) {
  width = cs3width;
 }

 if ((int)n < width) {
  werr("incomplete character sequence (%s)", show_mb(mb));
  return (-1);
 }

 for (i = 1; i < width; i++) {

  c <<= 8;
  c |= (uint8_t)(mb[i]);
 }

 *wc = c;
 return (width);
}
