
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int config; } ;


 int git_config_check_init (struct repository*) ;
 int git_configset_get_value (int ,char const*,char const**) ;

int repo_config_get_value(struct repository *repo,
     const char *key, const char **value)
{
 git_config_check_init(repo);
 return git_configset_get_value(repo->config, key, value);
}
