
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ PLAN ;


 int F_EQUAL ;
 int F_EXACTTIME ;
 int F_GREATER ;
 int F_LESSTHAN ;
 int errx (int,char*,char const*,char*,...) ;
 long long strtoq (char*,char**,int) ;

__attribute__((used)) static long long
find_parsetime(PLAN *plan, const char *option, char *vp)
{
 long long secs, value;
 char *str, *unit;


 str = vp;
 switch (*str) {
 case '+':
  ++str;
  plan->flags |= F_GREATER;
  break;
 case '-':
  ++str;
  plan->flags |= F_LESSTHAN;
  break;
 default:
  plan->flags |= F_EQUAL;
  break;
 }

 value = strtoq(str, &unit, 10);
 if (value == 0 && unit == str) {
  errx(1, "%s: %s: illegal time value", option, vp);

 }
 if (*unit == '\0')
  return value;


 secs = 0;
 for (;;) {
  switch(*unit) {
  case 's':
   secs += value;
   break;
  case 'm':
   secs += value * 60;
   break;
  case 'h':
   secs += value * 3600;
   break;
  case 'd':
   secs += value * 86400;
   break;
  case 'w':
   secs += value * 604800;
   break;
  default:
   errx(1, "%s: %s: bad unit '%c'", option, vp, *unit);

  }
  str = unit + 1;
  if (*str == '\0')
   break;
  value = strtoq(str, &unit, 10);
  if (value == 0 && unit == str) {
   errx(1, "%s: %s: illegal time value", option, vp);

  }
  if (*unit == '\0') {
   errx(1, "%s: %s: missing trailing unit", option, vp);

  }
 }
 plan->flags |= F_EXACTTIME;
 return secs;
}
