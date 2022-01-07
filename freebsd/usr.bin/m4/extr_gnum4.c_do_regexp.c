
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int regmatch_t ;
struct TYPE_6__ {scalar_t__ re_nsub; } ;
typedef TYPE_1__ regex_t ;



 int add_replace (char const*,TYPE_1__*,char const*,int *) ;
 int exit_regerror (int,TYPE_1__*,char const*) ;
 int getstring () ;
 int pbstr (int ) ;
 int regexec (TYPE_1__*,char const*,scalar_t__,int *,int ) ;

__attribute__((used)) static void
do_regexp(const char *string, regex_t *re, const char *source,
    const char *replace, regmatch_t *pm)
{
 int error;

 switch(error = regexec(re, string, re->re_nsub+1, pm, 0)) {
 case 0:
  add_replace(string, re, replace, pm);
  pbstr(getstring());
  break;
 case 128:
  break;
 default:
  exit_regerror(error, re, source);
 }
}
