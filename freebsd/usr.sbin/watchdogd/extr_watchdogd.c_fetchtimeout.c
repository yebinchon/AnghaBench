
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 scalar_t__ errno ;
 int errx (int ,char*,...) ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static long
fetchtimeout(int opt, const char *longopt, const char *myoptarg, int zero_ok)
{
 const char *errstr;
 char *p;
 long rv;

 errstr = ((void*)0);
 p = ((void*)0);
 errno = 0;
 rv = strtol(myoptarg, &p, 0);
 if ((p != ((void*)0) && *p != '\0') || errno != 0)
  errstr = "is not a number";
 if (rv < 0 || (!zero_ok && rv == 0))
  errstr = "must be greater than zero";
 if (errstr) {
  if (longopt)
   errx(EX_USAGE, "--%s argument %s", longopt, errstr);
  else
   errx(EX_USAGE, "-%c argument %s", opt, errstr);
 }
 return (rv);
}
