
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double uintmax_t ;
typedef double intmax_t ;


 int ENOMEM ;
 int PF (char*,...) ;
 int atoi (char*) ;
 int digits ;
 char* end_fmt ;
 int escape (char*,int ,size_t*) ;
 int free (char*) ;
 char** gargv ;
 char getchr () ;
 int getfloating (long double*,int) ;
 scalar_t__ getint (int*) ;
 int getnum (double*,double*,int) ;
 char* getstr () ;
 scalar_t__ isdigit (char) ;
 char** maxargv ;
 char* mknum (char*,char) ;
 int myargc ;
 char** myargv ;
 int * strchr (char const*,char) ;
 char* strdup (char*) ;
 char strerror (int ) ;
 int strlen (char*) ;
 int strspn (char*,int ) ;
 int warnx (char*,...) ;

__attribute__((used)) static char *
printf_doformat(char *fmt, int *rval)
{
 static const char skip1[] = "#'-+ 0";
 int fieldwidth, haveprec, havewidth, mod_ldbl, precision;
 char convch, nextch;
 char start[strlen(fmt) + 1];
 char **fargv;
 char *dptr;
 int l;

 dptr = start;
 *dptr++ = '%';
 *dptr = 0;

 fmt++;


 l = strspn(fmt, digits);
 if ((l > 0) && (fmt[l] == '$')) {
  int idx = atoi(fmt);
  if (idx <= myargc) {
   gargv = &myargv[idx - 1];
  } else {
   gargv = &myargv[myargc];
  }
  if (gargv > maxargv)
   maxargv = gargv;
  fmt += l + 1;


  fargv = gargv;
 } else {
  fargv = ((void*)0);
 }


 while (*fmt && strchr(skip1, *fmt) != ((void*)0)) {
  *dptr++ = *fmt++;
  *dptr = 0;
 }

 if (*fmt == '*') {

  fmt++;
  l = strspn(fmt, digits);
  if ((l > 0) && (fmt[l] == '$')) {
   int idx = atoi(fmt);
   if (fargv == ((void*)0)) {
    warnx("incomplete use of n$");
    return (((void*)0));
   }
   if (idx <= myargc) {
    gargv = &myargv[idx - 1];
   } else {
    gargv = &myargv[myargc];
   }
   fmt += l + 1;
  } else if (fargv != ((void*)0)) {
   warnx("incomplete use of n$");
   return (((void*)0));
  }

  if (getint(&fieldwidth))
   return (((void*)0));
  if (gargv > maxargv)
   maxargv = gargv;
  havewidth = 1;

  *dptr++ = '*';
  *dptr = 0;
 } else {
  havewidth = 0;


  while (isdigit(*fmt)) {
   *dptr++ = *fmt++;
   *dptr = 0;
  }
 }

 if (*fmt == '.') {

  fmt++;
  *dptr++ = '.';

  if (*fmt == '*') {

   fmt++;
   l = strspn(fmt, digits);
   if ((l > 0) && (fmt[l] == '$')) {
    int idx = atoi(fmt);
    if (fargv == ((void*)0)) {
     warnx("incomplete use of n$");
     return (((void*)0));
    }
    if (idx <= myargc) {
     gargv = &myargv[idx - 1];
    } else {
     gargv = &myargv[myargc];
    }
    fmt += l + 1;
   } else if (fargv != ((void*)0)) {
    warnx("incomplete use of n$");
    return (((void*)0));
   }

   if (getint(&precision))
    return (((void*)0));
   if (gargv > maxargv)
    maxargv = gargv;
   haveprec = 1;
   *dptr++ = '*';
   *dptr = 0;
  } else {
   haveprec = 0;


   while (isdigit(*fmt)) {
    *dptr++ = *fmt++;
    *dptr = 0;
   }
  }
 } else
  haveprec = 0;
 if (!*fmt) {
  warnx("missing format character");
  return (((void*)0));
 }
 *dptr++ = *fmt;
 *dptr = 0;
 if (*fmt == 'L') {
  mod_ldbl = 1;
  fmt++;
  if (!strchr("aAeEfFgG", *fmt)) {
   warnx("bad modifier L for %%%c", *fmt);
   return (((void*)0));
  }
 } else {
  mod_ldbl = 0;
 }


 if (fargv != ((void*)0)) {
  gargv = fargv;
 }

 convch = *fmt;
 nextch = *++fmt;

 *fmt = '\0';
 switch (convch) {
 case 'b': {
  size_t len;
  char *p;
  int getout;


  start[strlen(start) - 1] = 's';
  if ((p = strdup(getstr())) == ((void*)0)) {
   warnx("%s", strerror(ENOMEM));
   return (((void*)0));
  }
  getout = escape(p, 0, &len);
  PF(start, p);


  free(p);
  if (getout)
   return (end_fmt);
  break;
 }
 case 'c': {
  char p;

  p = getchr();
  if (p != '\0')
   PF(start, p);
  break;
 }
 case 's': {
  const char *p;

  p = getstr();
  PF(start, p);
  break;
 }
 case 'd': case 'i': case 'o': case 'u': case 'x': case 'X': {
  char *f;
  intmax_t val;
  uintmax_t uval;
  int signedconv;

  signedconv = (convch == 'd' || convch == 'i');
  if ((f = mknum(start, convch)) == ((void*)0))
   return (((void*)0));
  if (getnum(&val, &uval, signedconv))
   *rval = 1;
  if (signedconv)
   PF(f, val);
  else
   PF(f, uval);
  break;
 }
 case 'e': case 'E':
 case 'f': case 'F':
 case 'g': case 'G':
 case 'a': case 'A': {
  long double p;

  if (getfloating(&p, mod_ldbl))
   *rval = 1;
  if (mod_ldbl)
   PF(start, p);
  else
   PF(start, (double)p);
  break;
 }
 default:
  warnx("illegal format character %c", convch);
  return (((void*)0));
 }
 *fmt = nextch;

 return (fmt);
}
