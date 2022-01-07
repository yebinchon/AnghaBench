
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 int PCHAR (char) ;

int
mps_parse_flags(uintmax_t num, const char *q, char *outbuf, int tmpsz)
{
 int n, tmp, retval = 0;

 if (num == 0)
  return (retval);


 tmp = retval;
 while (*q) {
  n = *q++;
  if (num & (1 << (n - 1))) {
   PCHAR(retval != tmp ? ',' : '<');
   for (; (n = *q) > ' '; ++q)
    PCHAR(n);
  } else
   for (; *q > ' '; ++q)
    continue;
 }
 if (retval != tmp)
  PCHAR('>');

 return (retval);
}
