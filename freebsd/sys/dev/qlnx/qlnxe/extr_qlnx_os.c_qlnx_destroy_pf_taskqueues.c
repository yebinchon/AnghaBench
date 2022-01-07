
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_hwfns; } ;
struct TYPE_7__ {TYPE_2__* sriov_task; TYPE_1__ cdev; } ;
typedef TYPE_3__ qlnx_host_t ;
struct TYPE_6__ {int * pf_taskqueue; int pf_task; } ;


 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
qlnx_destroy_pf_taskqueues(qlnx_host_t *ha)
{
 int i;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {
  if (ha->sriov_task[i].pf_taskqueue != ((void*)0)) {
   taskqueue_drain(ha->sriov_task[i].pf_taskqueue,
    &ha->sriov_task[i].pf_task);
   taskqueue_free(ha->sriov_task[i].pf_taskqueue);
   ha->sriov_task[i].pf_taskqueue = ((void*)0);
  }
 }
 return;
}
