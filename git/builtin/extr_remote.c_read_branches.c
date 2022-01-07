
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nr; } ;


 TYPE_1__ branch_list ;
 int config_read_branches ;
 int git_config (int ,int *) ;

__attribute__((used)) static void read_branches(void)
{
 if (branch_list.nr)
  return;
 git_config(config_read_branches, ((void*)0));
}
