
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int repo_config_clear (int ) ;
 int the_repository ;

void git_config_clear(void)
{
 repo_config_clear(the_repository);
}
