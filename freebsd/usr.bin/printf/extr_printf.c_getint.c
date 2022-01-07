
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ intmax_t ;


 int ERANGE ;
 scalar_t__ INT_MAX ;
 scalar_t__ INT_MIN ;
 int * gargv ;
 scalar_t__ getnum (scalar_t__*,int *,int) ;
 int strerror (int ) ;
 int warnx (char*,int ,int ) ;

__attribute__((used)) static int
getint(int *ip)
{
 intmax_t val;
 uintmax_t uval;
 int rval;

 if (getnum(&val, &uval, 1))
  return (1);
 rval = 0;
 if (val < INT_MIN || val > INT_MAX) {
  warnx("%s: %s", *gargv, strerror(ERANGE));
  rval = 1;
 }
 *ip = (int)val;
 return (rval);
}
