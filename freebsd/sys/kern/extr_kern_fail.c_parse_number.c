
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PROB_DIGITS ;
 scalar_t__ isdigit (char) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static char *
parse_number(int *out_units, int *out_decimal, char *p)
{
 char *old_p;
 old_p = p;
 *out_units = strtol(p, &p, 10);
 if (p == old_p && *p != '.')
  return (((void*)0));


 *out_decimal = 0;
 if (*p == '.') {
  int digits = 0;
  p++;
  while (isdigit(*p)) {
   int digit = *p - '0';
   if (digits < PROB_DIGITS - 2)
    *out_decimal = *out_decimal * 10 + digit;
   else if (digits == PROB_DIGITS - 2 && digit >= 5)
    (*out_decimal)++;
   digits++;
   p++;
  }
  if (!digits)
   return (((void*)0));
  while (digits++ < PROB_DIGITS - 2)
   *out_decimal *= 10;
 }

 return (p);
}
