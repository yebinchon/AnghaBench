
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;


 int git_config_check_init (struct repository*) ;
 int repo_config_get_string_const (struct repository*,char const*,char const**) ;

int repo_config_get_string(struct repository *repo,
      const char *key, char **dest)
{
 git_config_check_init(repo);
 return repo_config_get_string_const(repo, key, (const char **)dest);
}
