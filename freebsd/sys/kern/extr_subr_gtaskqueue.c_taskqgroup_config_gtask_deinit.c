
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouptask {int dummy; } ;


 int qgroup_config ;
 int taskqgroup_detach (int ,struct grouptask*) ;

void
taskqgroup_config_gtask_deinit(struct grouptask *gtask)
{

 taskqgroup_detach(qgroup_config, gtask);
}
