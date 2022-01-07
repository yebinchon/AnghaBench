
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int flags; scalar_t__ ref_count; int handle; } ;
struct qp_guest_endpoint {TYPE_2__ qp; } ;
struct TYPE_6__ {int mutex; int hibernate; } ;


 int VMCI_QPFLAG_LOCAL ;
 int atomic_store_int (int *,int ) ;
 int qp_guest_endpoint_destroy (struct qp_guest_endpoint*) ;
 TYPE_1__ qp_guest_endpoints ;
 int queue_pair_list_destroy (TYPE_1__*) ;
 scalar_t__ queue_pair_list_get_head (TYPE_1__*) ;
 int queue_pair_list_remove_entry (TYPE_1__*,TYPE_2__*) ;
 int vmci_mutex_acquire (int *) ;
 int vmci_mutex_release (int *) ;
 int vmci_queue_pair_detach_hypercall (int ) ;

void
vmci_qp_guest_endpoints_exit(void)
{
 struct qp_guest_endpoint *entry;

 vmci_mutex_acquire(&qp_guest_endpoints.mutex);

 while ((entry =
     (struct qp_guest_endpoint *)queue_pair_list_get_head(
     &qp_guest_endpoints)) != ((void*)0)) {



  if (!(entry->qp.flags & VMCI_QPFLAG_LOCAL))
   vmci_queue_pair_detach_hypercall(entry->qp.handle);



  entry->qp.ref_count = 0;
  queue_pair_list_remove_entry(&qp_guest_endpoints, &entry->qp);
  qp_guest_endpoint_destroy(entry);
 }

 atomic_store_int(&qp_guest_endpoints.hibernate, 0);
 vmci_mutex_release(&qp_guest_endpoints.mutex);
 queue_pair_list_destroy(&qp_guest_endpoints);
}
