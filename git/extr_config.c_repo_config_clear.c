
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* config; } ;
struct TYPE_2__ {int hash_initialized; } ;


 int git_configset_clear (TYPE_1__*) ;

__attribute__((used)) static void repo_config_clear(struct repository *repo)
{
 if (!repo->config || !repo->config->hash_initialized)
  return;
 git_configset_clear(repo->config);
}
