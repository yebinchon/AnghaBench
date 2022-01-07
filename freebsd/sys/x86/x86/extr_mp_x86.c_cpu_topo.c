
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpu_group {int dummy; } ;


 int mp_ncpus ;
 struct cpu_group* smp_topo_alloc (int) ;
 struct cpu_group* smp_topo_none () ;
 int topo_root ;
 int x86topo_add_sched_group (int *,struct cpu_group*) ;

struct cpu_group *
cpu_topo(void)
{
 struct cpu_group *cg_root;

 if (mp_ncpus <= 1)
  return (smp_topo_none());

 cg_root = smp_topo_alloc(1);
 x86topo_add_sched_group(&topo_root, cg_root);
 return (cg_root);
}
