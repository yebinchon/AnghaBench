
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TASK_INIT (int *,int ,int ,int *) ;
 int callout_init (int *,int) ;
 int callout_reset (int *,int,int ,int *) ;
 int hz ;
 int vmem_periodic ;
 int vmem_periodic_ch ;
 int vmem_periodic_interval ;
 int vmem_periodic_kick ;
 int vmem_periodic_wk ;

__attribute__((used)) static void
vmem_start_callout(void *unused)
{

 TASK_INIT(&vmem_periodic_wk, 0, vmem_periodic, ((void*)0));
 vmem_periodic_interval = hz * 10;
 callout_init(&vmem_periodic_ch, 1);
 callout_reset(&vmem_periodic_ch, vmem_periodic_interval,
     vmem_periodic_kick, ((void*)0));
}
