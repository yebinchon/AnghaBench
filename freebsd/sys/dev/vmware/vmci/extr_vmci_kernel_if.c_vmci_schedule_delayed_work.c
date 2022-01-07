
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_work_fn ;


 int vmci_schedule_delayed_work_fn (int *,void*) ;

int
vmci_schedule_delayed_work(vmci_work_fn *work_fn, void *data)
{

 return (vmci_schedule_delayed_work_fn(work_fn, data));
}
