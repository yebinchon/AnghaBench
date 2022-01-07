
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u_long ;


 int asprintf (char**,char*,unsigned long,unsigned long,int,char*,char*,int,char) ;
 int err (int,int *) ;
 int errno ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int isdigit (unsigned char) ;
 int odadd (char*) ;
 int strtoul (char const*,char**,int) ;

__attribute__((used)) static const char *
odformatint(char fchar, const char *fmt)
{
 unsigned long long n;
 size_t isize;
 int digits;
 char *end, *hdfmt;

 isize = sizeof(int);
 switch (*fmt) {
 case 'C':
  isize = sizeof(char);
  fmt++;
  break;
 case 'I':
  isize = sizeof(int);
  fmt++;
  break;
 case 'L':
  isize = sizeof(long);
  fmt++;
  break;
 case 'S':
  isize = sizeof(short);
  fmt++;
  break;
 default:
  if (isdigit((unsigned char)*fmt)) {
   errno = 0;
   isize = (size_t)strtoul(fmt, &end, 10);
   if (errno != 0 || isize == 0)
    errx(1, "%s: invalid size", fmt);
   if (isize != sizeof(char) && isize != sizeof(short) &&
       isize != sizeof(int) && isize != sizeof(long))
    errx(1, "unsupported int size %lu",
        (u_long)isize);
   fmt = (const char *)end;
  }
 }







 n = (1ULL << (8 * isize)) - 1;
 digits = 0;
 while (n != 0) {
  digits++;
  n >>= (fchar == 'x') ? 4 : 3;
 }
 if (fchar == 'd')
  digits++;
 asprintf(&hdfmt, "%lu/%lu \"%*s%%%s%d%c\" \"\\n\"",
     16UL / (u_long)isize, (u_long)isize, (int)(4 * isize - digits),
     "", (fchar == 'd' || fchar == 'u') ? "" : "0", digits, fchar);
 if (hdfmt == ((void*)0))
  err(1, ((void*)0));
 odadd(hdfmt);
 free(hdfmt);

 return (fmt);
}
