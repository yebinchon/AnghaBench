
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; } ;


 TYPE_1__ qp_guest_endpoints ;
 int vmci_mutex_acquire (int *) ;
 int vmci_mutex_release (int *) ;

void
vmci_qp_guest_endpoints_sync(void)
{

 vmci_mutex_acquire(&qp_guest_endpoints.mutex);
 vmci_mutex_release(&qp_guest_endpoints.mutex);
}
