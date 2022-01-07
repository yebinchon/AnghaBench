
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uintmax_t ;
typedef void* intmax_t ;


 scalar_t__ ERANGE ;
 void* asciicode () ;
 scalar_t__ errno ;
 char** gargv ;
 int strerror (scalar_t__) ;
 void* strtoimax (char*,char**,int ) ;
 void* strtoumax (char*,char**,int ) ;
 int warnx (char*,char*,...) ;

__attribute__((used)) static int
getnum(intmax_t *ip, uintmax_t *uip, int signedconv)
{
 char *ep;
 int rval;

 if (!*gargv) {
  *ip = *uip = 0;
  return (0);
 }
 if (**gargv == '"' || **gargv == '\'') {
  if (signedconv)
   *ip = asciicode();
  else
   *uip = asciicode();
  return (0);
 }
 rval = 0;
 errno = 0;
 if (signedconv)
  *ip = strtoimax(*gargv, &ep, 0);
 else
  *uip = strtoumax(*gargv, &ep, 0);
 if (ep == *gargv) {
  warnx("%s: expected numeric value", *gargv);
  rval = 1;
 }
 else if (*ep != '\0') {
  warnx("%s: not completely converted", *gargv);
  rval = 1;
 }
 if (errno == ERANGE) {
  warnx("%s: %s", *gargv, strerror(ERANGE));
  rval = 1;
 }
 ++gargv;
 return (rval);
}
