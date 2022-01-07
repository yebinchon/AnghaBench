
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct grep_opt* value; } ;
struct grep_opt {int dummy; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int GREP_NOT ;
 int append_grep_pattern (struct grep_opt*,char*,char*,int ,int ) ;

__attribute__((used)) static int not_callback(const struct option *opt, const char *arg, int unset)
{
 struct grep_opt *grep_opt = opt->value;
 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);
 append_grep_pattern(grep_opt, "--not", "command line", 0, GREP_NOT);
 return 0;
}
