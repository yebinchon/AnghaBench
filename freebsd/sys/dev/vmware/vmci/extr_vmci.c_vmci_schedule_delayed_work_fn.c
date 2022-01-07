
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmci_work_fn ;
struct vmci_delayed_work_info {void* data; int * work_fn; } ;
struct TYPE_2__ {int vmci_delayed_work_task; int vmci_delayed_work_lock; int vmci_delayed_work_infos; } ;


 int VMCI_ERROR_NO_MEM ;
 int VMCI_MEMORY_ATOMIC ;
 int VMCI_SUCCESS ;
 int entry ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 struct vmci_delayed_work_info* vmci_alloc_kernel_mem (int,int ) ;
 int vmci_list_insert (int *,struct vmci_delayed_work_info*,int ) ;
 TYPE_1__* vmci_sc ;

int
vmci_schedule_delayed_work_fn(vmci_work_fn *work_fn, void *data)
{
 struct vmci_delayed_work_info *delayed_work_info;

 delayed_work_info = vmci_alloc_kernel_mem(sizeof(*delayed_work_info),
     VMCI_MEMORY_ATOMIC);

 if (!delayed_work_info)
  return (VMCI_ERROR_NO_MEM);

 delayed_work_info->work_fn = work_fn;
 delayed_work_info->data = data;
 mtx_lock(&vmci_sc->vmci_delayed_work_lock);
 vmci_list_insert(&vmci_sc->vmci_delayed_work_infos,
     delayed_work_info, entry);
 mtx_unlock(&vmci_sc->vmci_delayed_work_lock);

 taskqueue_enqueue(taskqueue_thread,
     &vmci_sc->vmci_delayed_work_task);

 return (VMCI_SUCCESS);
}
