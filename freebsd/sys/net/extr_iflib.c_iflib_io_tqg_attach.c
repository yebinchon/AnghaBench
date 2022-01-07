
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouptask {int dummy; } ;


 int qgroup_if_io_tqg ;
 int taskqgroup_attach_cpu (int ,struct grouptask*,void*,int,int *,int *,char const*) ;

void
iflib_io_tqg_attach(struct grouptask *gt, void *uniq, int cpu, const char *name)
{

 taskqgroup_attach_cpu(qgroup_if_io_tqg, gt, uniq, cpu, ((void*)0), ((void*)0),
     name);
}
