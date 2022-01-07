
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_hwfn {scalar_t__ p_dev; } ;
struct TYPE_3__ {int err_task; int err_taskqueue; } ;
typedef TYPE_1__ qlnx_host_t ;


 scalar_t__ qlnx_vf_device (TYPE_1__*) ;
 int taskqueue_enqueue (int ,int *) ;

void
qlnx_schedule_recovery(void *p_hwfn)
{
 qlnx_host_t *ha;

 ha = (qlnx_host_t *)((struct ecore_hwfn *)p_hwfn)->p_dev;

 if (qlnx_vf_device(ha) != 0) {
  taskqueue_enqueue(ha->err_taskqueue, &ha->err_task);
 }

 return;
}
