
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int rm_so; } ;
typedef TYPE_1__ regmatch_t ;
struct TYPE_9__ {scalar_t__ re_nsub; } ;
typedef TYPE_2__ regex_t ;



 int exit_regerror (int,TYPE_2__*,char const*) ;
 int pbnum (int) ;
 int pbunsigned (int ) ;
 int regexec (TYPE_2__*,char const*,scalar_t__,TYPE_1__*,int ) ;

__attribute__((used)) static void
do_regexpindex(const char *string, regex_t *re, const char *source,
    regmatch_t *pm)
{
 int error;

 switch(error = regexec(re, string, re->re_nsub+1, pm, 0)) {
 case 0:
  pbunsigned(pm[0].rm_so);
  break;
 case 128:
  pbnum(-1);
  break;
 default:
  exit_regerror(error, re, source);
 }
}
