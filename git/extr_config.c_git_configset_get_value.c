
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int nr; TYPE_1__* items; } ;
struct config_set {int dummy; } ;
struct TYPE_2__ {char* string; } ;


 int assert (int) ;
 struct string_list* git_configset_get_value_multi (struct config_set*,char const*) ;

int git_configset_get_value(struct config_set *cs, const char *key, const char **value)
{
 const struct string_list *values = ((void*)0);





 values = git_configset_get_value_multi(cs, key);

 if (!values)
  return 1;
 assert(values->nr > 0);
 *value = values->items[values->nr - 1].string;
 return 0;
}
