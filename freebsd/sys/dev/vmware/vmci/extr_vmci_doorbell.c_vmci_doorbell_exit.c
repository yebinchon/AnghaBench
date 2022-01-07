
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;


 int vmci_cleanup_lock (int *) ;
 TYPE_1__ vmci_doorbell_it ;

void
vmci_doorbell_exit(void)
{

 vmci_cleanup_lock(&vmci_doorbell_it.lock);
}
