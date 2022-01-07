
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int qlnx_callout; scalar_t__ storm_stats_gather; int hw_stats; int cdev; int err_task; int err_taskqueue; scalar_t__ error_recovery; } ;
typedef TYPE_1__ qlnx_host_t ;


 int callout_reset (int *,int ,void (*) (void*),TYPE_1__*) ;
 int ecore_get_vport_stats (int *,int *) ;
 int hz ;
 int qlnx_sample_storm_stats (TYPE_1__*) ;
 int taskqueue_enqueue (int ,int *) ;

__attribute__((used)) static void
qlnx_timer(void *arg)
{
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)arg;

 if (ha->error_recovery) {
  ha->error_recovery = 0;
  taskqueue_enqueue(ha->err_taskqueue, &ha->err_task);
  return;
 }

        ecore_get_vport_stats(&ha->cdev, &ha->hw_stats);

 if (ha->storm_stats_gather)
  qlnx_sample_storm_stats(ha);

 callout_reset(&ha->qlnx_callout, hz, qlnx_timer, ha);

 return;
}
