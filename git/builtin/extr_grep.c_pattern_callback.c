
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct grep_opt* value; } ;
struct grep_opt {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int GREP_PATTERN ;
 int append_grep_pattern (struct grep_opt*,char const*,char*,int ,int ) ;

__attribute__((used)) static int pattern_callback(const struct option *opt, const char *arg,
       int unset)
{
 struct grep_opt *grep_opt = opt->value;
 BUG_ON_OPT_NEG(unset);
 append_grep_pattern(grep_opt, arg, "-e option", 0, GREP_PATTERN);
 return 0;
}
