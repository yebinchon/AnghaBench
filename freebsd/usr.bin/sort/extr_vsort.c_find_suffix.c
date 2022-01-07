
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef scalar_t__ bwstring_iterator ;


 int bws_get_iter_value (scalar_t__) ;
 scalar_t__ bws_iterator_inc (scalar_t__,int) ;
 int isalnum_clocale (int) ;
 int isalpha_clocale (int) ;

__attribute__((used)) static void
find_suffix(bwstring_iterator si, bwstring_iterator se, size_t *len)
{
 wchar_t c;
 size_t clen;
 bool expect_alpha, sfx;

 sfx = 0;
 expect_alpha = 0;
 *len = 0;
 clen = 0;

 while ((si < se) && (c = bws_get_iter_value(si))) {
  if (expect_alpha) {
   expect_alpha = 0;
   if (!isalpha_clocale(c) && (c != L'~'))
    sfx = 0;
  } else if (c == L'.') {
   expect_alpha = 1;
   if (!sfx) {
    sfx = 1;
    *len = clen;
   }
  } else if (!isalnum_clocale(c) && (c != L'~'))
   sfx = 0;

  si = bws_iterator_inc(si, 1);
  ++clen;
 }
 if (!sfx)
  *len = clen;
}
