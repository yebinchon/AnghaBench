
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 struct string_list const* repo_config_get_value_multi (int ,char const*) ;
 int the_repository ;

const struct string_list *git_config_get_value_multi(const char *key)
{
 return repo_config_get_value_multi(the_repository, key);
}
