
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct repository {int config; } ;


 int git_config_check_init (struct repository*) ;
 struct string_list const* git_configset_get_value_multi (int ,char const*) ;

const struct string_list *repo_config_get_value_multi(struct repository *repo,
            const char *key)
{
 git_config_check_init(repo);
 return git_configset_get_value_multi(repo->config, key);
}
