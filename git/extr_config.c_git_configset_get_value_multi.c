
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct config_set_element {struct string_list const value_list; } ;
struct config_set {int dummy; } ;


 struct config_set_element* configset_find_element (struct config_set*,char const*) ;

const struct string_list *git_configset_get_value_multi(struct config_set *cs, const char *key)
{
 struct config_set_element *e = configset_find_element(cs, key);
 return e ? &e->value_list : ((void*)0);
}
