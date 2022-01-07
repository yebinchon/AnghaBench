
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int config; } ;


 int git_config_check_init (struct repository*) ;
 int git_configset_get_pathname (int ,char const*,char const**) ;
 int git_die_config (char const*,int *) ;

int repo_config_get_pathname(struct repository *repo,
        const char *key, const char **dest)
{
 int ret;
 git_config_check_init(repo);
 ret = git_configset_get_pathname(repo->config, key, dest);
 if (ret < 0)
  git_die_config(key, ((void*)0));
 return ret;
}
