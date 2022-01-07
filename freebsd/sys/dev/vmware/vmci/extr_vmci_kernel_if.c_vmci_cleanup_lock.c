
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_lock ;


 int mtx_destroy (int *) ;

void
vmci_cleanup_lock(vmci_lock *lock)
{

 mtx_destroy(lock);
}
