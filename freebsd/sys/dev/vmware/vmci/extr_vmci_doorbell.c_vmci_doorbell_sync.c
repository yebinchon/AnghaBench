
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 TYPE_1__ vmci_doorbell_it ;
 int vmci_grab_lock_bh (int *) ;
 int vmci_release_lock_bh (int *) ;
 int vmci_resource_sync () ;

void
vmci_doorbell_sync(void)
{

 vmci_grab_lock_bh(&vmci_doorbell_it.lock);
 vmci_release_lock_bh(&vmci_doorbell_it.lock);
 vmci_resource_sync();
}
