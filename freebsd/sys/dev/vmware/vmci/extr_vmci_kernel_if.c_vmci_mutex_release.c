
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_mutex ;


 int mtx_unlock (int *) ;

void
vmci_mutex_release(vmci_mutex *mutex)
{

 mtx_unlock(mutex);
}
