
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int regex_t ;
struct TYPE_3__ {size_t rm_so; size_t rm_eo; } ;



 int REG_STARTEND ;
 int * defpreg ;
 int errx (int,char*,...) ;
 TYPE_1__* match ;
 scalar_t__ maxnsub ;
 int regexec (int *,char const*,scalar_t__,TYPE_1__*,int) ;
 int strregerror (int,int *) ;

__attribute__((used)) static int
regexec_e(regex_t *preg, const char *string, int eflags, int nomatch,
 size_t start, size_t stop)
{
 int eval;

 if (preg == ((void*)0)) {
  if (defpreg == ((void*)0))
   errx(1, "first RE may not be empty");
 } else
  defpreg = preg;


 match[0].rm_so = start;
 match[0].rm_eo = stop;

 eval = regexec(defpreg, string,
     nomatch ? 0 : maxnsub + 1, match, eflags | REG_STARTEND);
 switch(eval) {
 case 0:
  return (1);
 case 128:
  return (0);
 }
 errx(1, "RE error: %s", strregerror(eval, defpreg));

}
