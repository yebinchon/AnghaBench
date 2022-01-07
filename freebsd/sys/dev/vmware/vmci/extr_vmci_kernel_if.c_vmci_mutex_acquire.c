
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_mutex ;


 int mtx_lock (int *) ;

void
vmci_mutex_acquire(vmci_mutex *mutex)
{

 mtx_lock(mutex);
}
