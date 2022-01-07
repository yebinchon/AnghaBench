
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct option {scalar_t__ defval; scalar_t__ value; } ;


 int string_list_append (struct string_list*,char const*) ;
 int string_list_clear (struct string_list*,int ) ;

__attribute__((used)) static int recurse_submodules_cb(const struct option *opt,
     const char *arg, int unset)
{
 if (unset)
  string_list_clear((struct string_list *)opt->value, 0);
 else if (arg)
  string_list_append((struct string_list *)opt->value, arg);
 else
  string_list_append((struct string_list *)opt->value,
       (const char *)opt->defval);

 return 0;
}
