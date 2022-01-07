
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {struct dir_struct* value; } ;
struct dir_struct {int dummy; } ;


 int BUG_ON_OPT_NEG (int) ;
 int add_patterns_from_file (struct dir_struct*,char const*) ;
 int exc_given ;

__attribute__((used)) static int option_parse_exclude_from(const struct option *opt,
         const char *arg, int unset)
{
 struct dir_struct *dir = opt->value;

 BUG_ON_OPT_NEG(unset);

 exc_given = 1;
 add_patterns_from_file(dir, arg);

 return 0;
}
