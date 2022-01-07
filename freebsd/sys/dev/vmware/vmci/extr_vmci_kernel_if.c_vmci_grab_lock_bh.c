
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_lock ;


 int mtx_lock (int *) ;

void
vmci_grab_lock_bh(vmci_lock *lock)
{

 mtx_lock(lock);
}
