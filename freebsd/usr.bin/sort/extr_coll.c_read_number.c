
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wchar_t ;
struct bwstring {int dummy; } ;
typedef int bwstring_iterator ;


 size_t MAX_NUM_SIZE ;
 int bws_begin (struct bwstring*) ;
 scalar_t__ bws_get_iter_value (int ) ;
 int bws_iterator_inc (int ,int) ;
 scalar_t__ iswblank (scalar_t__) ;
 scalar_t__ iswdigit (scalar_t__) ;
 int setsuffix (scalar_t__,unsigned char*) ;
 scalar_t__ symbol_decimal_point ;
 scalar_t__ symbol_negative_sign ;
 scalar_t__ symbol_thousands_sep ;

__attribute__((used)) static int
read_number(struct bwstring *s0, int *sign, wchar_t *smain, size_t *main_len, wchar_t *sfrac, size_t *frac_len, unsigned char *si)
{
 bwstring_iterator s;

 s = bws_begin(s0);


 sfrac[0] = 0;

 while (iswblank(bws_get_iter_value(s)))
  s = bws_iterator_inc(s, 1);

 if (bws_get_iter_value(s) == (wchar_t)symbol_negative_sign) {
  *sign = -1;
  s = bws_iterator_inc(s, 1);
 }


 while (iswdigit(bws_get_iter_value(s)) &&
     (bws_get_iter_value(s) == L'0'))
  s = bws_iterator_inc(s, 1);

 while (bws_get_iter_value(s) && *main_len < MAX_NUM_SIZE) {
  if (iswdigit(bws_get_iter_value(s))) {
   smain[*main_len] = bws_get_iter_value(s);
   s = bws_iterator_inc(s, 1);
   *main_len += 1;
  } else if (symbol_thousands_sep &&
      (bws_get_iter_value(s) == (wchar_t)symbol_thousands_sep))
   s = bws_iterator_inc(s, 1);
  else
   break;
 }

 smain[*main_len] = 0;

 if (bws_get_iter_value(s) == (wchar_t)symbol_decimal_point) {
  s = bws_iterator_inc(s, 1);
  while (iswdigit(bws_get_iter_value(s)) &&
      *frac_len < MAX_NUM_SIZE) {
   sfrac[*frac_len] = bws_get_iter_value(s);
   s = bws_iterator_inc(s, 1);
   *frac_len += 1;
  }
  sfrac[*frac_len] = 0;

  while (*frac_len > 0 && sfrac[*frac_len - 1] == L'0') {
   --(*frac_len);
   sfrac[*frac_len] = L'\0';
  }
 }

 setsuffix(bws_get_iter_value(s),si);

 if ((*main_len + *frac_len) == 0)
  *sign = 0;

 return (0);
}
