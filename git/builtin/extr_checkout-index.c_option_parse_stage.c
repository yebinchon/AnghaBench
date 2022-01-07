
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 char CHECKOUT_ALL ;
 int _ (char*) ;
 char checkout_stage ;
 int die (int ) ;
 int strcmp (char const*,char*) ;
 int to_tempfile ;

__attribute__((used)) static int option_parse_stage(const struct option *opt,
         const char *arg, int unset)
{
 BUG_ON_OPT_NEG(unset);

 if (!strcmp(arg, "all")) {
  to_tempfile = 1;
  checkout_stage = CHECKOUT_ALL;
 } else {
  int ch = arg[0];
  if ('1' <= ch && ch <= '3')
   checkout_stage = arg[0] - '0';
  else
   die(_("stage should be between 1 and 3 or all"));
 }
 return 0;
}
