
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ PLAN ;


 int F_EQUAL ;
 int F_GREATER ;
 int F_LESSTHAN ;
 int errx (int,char*,char const*,char*) ;
 long long strtoq (char*,char**,int) ;

__attribute__((used)) static long long
find_parsenum(PLAN *plan, const char *option, char *vp, char *endch)
{
 long long value;
 char *endchar, *str;


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






 value = strtoq(str, &endchar, 10);
 if (value == 0 && endchar == str)
  errx(1, "%s: %s: illegal numeric value", option, vp);
 if (endchar[0] && endch == ((void*)0))
  errx(1, "%s: %s: illegal trailing character", option, vp);
 if (endch)
  *endch = endchar[0];
 return value;
}
