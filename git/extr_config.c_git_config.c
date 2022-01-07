
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_fn_t ;


 int repo_config (int ,int ,void*) ;
 int the_repository ;

void git_config(config_fn_t fn, void *data)
{
 repo_config(the_repository, fn, data);
}
