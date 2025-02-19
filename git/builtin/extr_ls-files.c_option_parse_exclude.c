
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct option {struct string_list* value; } ;


 int BUG_ON_OPT_NEG (int) ;
 int exc_given ;
 int string_list_append (struct string_list*,char const*) ;

__attribute__((used)) static int option_parse_exclude(const struct option *opt,
    const char *arg, int unset)
{
 struct string_list *exclude_list = opt->value;

 BUG_ON_OPT_NEG(unset);

 exc_given = 1;
 string_list_append(exclude_list, arg);

 return 0;
}
