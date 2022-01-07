
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {TYPE_1__* config; } ;
struct TYPE_2__ {scalar_t__ hash_initialized; } ;


 int repo_read_config (struct repository*) ;

__attribute__((used)) static void git_config_check_init(struct repository *repo)
{
 if (repo->config && repo->config->hash_initialized)
  return;
 repo_read_config(repo);
}
