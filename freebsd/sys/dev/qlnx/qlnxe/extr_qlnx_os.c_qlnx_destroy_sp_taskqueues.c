
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_hwfns; } ;
struct TYPE_5__ {int ** sp_taskqueue; int * sp_task; TYPE_1__ cdev; } ;
typedef TYPE_2__ qlnx_host_t ;


 int taskqueue_drain (int *,int *) ;
 int taskqueue_free (int *) ;

__attribute__((used)) static void
qlnx_destroy_sp_taskqueues(qlnx_host_t *ha)
{
 int i;

 for (i = 0; i < ha->cdev.num_hwfns; i++) {
  if (ha->sp_taskqueue[i] != ((void*)0)) {
   taskqueue_drain(ha->sp_taskqueue[i], &ha->sp_task[i]);
   taskqueue_free(ha->sp_taskqueue[i]);
  }
 }
 return;
}
