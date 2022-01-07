
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct dir_struct* value; } ;
struct dir_struct {int dummy; } ;


 int BUG_ON_OPT_ARG (char const*) ;
 int BUG_ON_OPT_NEG (int) ;
 int exc_given ;
 int setup_standard_excludes (struct dir_struct*) ;

__attribute__((used)) static int option_parse_exclude_standard(const struct option *opt,
      const char *arg, int unset)
{
 struct dir_struct *dir = opt->value;

 BUG_ON_OPT_NEG(unset);
 BUG_ON_OPT_ARG(arg);

 exc_given = 1;
 setup_standard_excludes(dir);

 return 0;
}
