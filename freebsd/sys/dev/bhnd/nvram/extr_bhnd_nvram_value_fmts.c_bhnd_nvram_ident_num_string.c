
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 scalar_t__ bhnd_nv_isdigit (char) ;
 scalar_t__ bhnd_nv_isupper (char) ;
 scalar_t__ bhnd_nv_isxdigit (char) ;

__attribute__((used)) static bool
bhnd_nvram_ident_num_string(const char *inp, size_t ilen, u_int base,
    u_int *obase)
{
 size_t nbytes, ndigits;

 nbytes = 0;
 ndigits = 0;


 if (nbytes >= ilen)
  return (0);

 if (inp[nbytes] == '-' || inp[nbytes] == '+')
  nbytes++;


 if (nbytes == ilen)
  return (0);


 if (base == 16 || base == 0) {

  if (ilen - nbytes >= 2 && inp[nbytes] == '0' &&
      (inp[nbytes+1] == 'x' || inp[nbytes+1] == 'X'))
  {
   base = 16;
   nbytes += 2;
  }
 }


 if (nbytes == ilen)
  return (0);


 if (base == 0) {
  if (inp[nbytes] == '0') {
   base = 8;
  } else {
   base = 10;
  }
 }


 for (; nbytes < ilen; nbytes++) {
  u_int carry;
  char c;


  c = inp[nbytes];
  if (bhnd_nv_isdigit(c)) {
   carry = c - '0';
  } else if (bhnd_nv_isxdigit(c)) {
   if (bhnd_nv_isupper(c))
    carry = (c - 'A') + 10;
   else
    carry = (c - 'a') + 10;
  } else {

   return (0);
  }




  if (carry >= base)
   return (0);


  ndigits++;
 }


 if (ndigits == 0)
  return (0);


 if (obase != ((void*)0))
  *obase = base;
 return (1);
}
