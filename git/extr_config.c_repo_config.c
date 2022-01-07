
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int config; } ;
typedef int config_fn_t ;


 int configset_iter (int ,int ,void*) ;
 int git_config_check_init (struct repository*) ;

void repo_config(struct repository *repo, config_fn_t fn, void *data)
{
 git_config_check_init(repo);
 configset_iter(repo->config, fn, data);
}
