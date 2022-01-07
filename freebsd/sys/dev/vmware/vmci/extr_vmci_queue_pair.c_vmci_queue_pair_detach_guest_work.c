
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct vmci_handle {int dummy; } ;
struct TYPE_6__ {int ref_count; int flags; } ;
struct qp_guest_endpoint {TYPE_2__ qp; scalar_t__ hibernate_failure; } ;
struct TYPE_5__ {int mutex; } ;


 int ASSERT (int) ;
 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_HANDLE_INVALID (struct vmci_handle) ;
 int VMCI_QPFLAG_LOCAL ;
 int VMCI_SUCCESS ;
 int qp_guest_endpoint_destroy (struct qp_guest_endpoint*) ;
 TYPE_1__ qp_guest_endpoints ;
 scalar_t__ queue_pair_list_find_entry (TYPE_1__*,struct vmci_handle) ;
 int queue_pair_list_remove_entry (TYPE_1__*,TYPE_2__*) ;
 int queue_pair_notify_peer_local (int,struct vmci_handle) ;
 int vmci_mutex_acquire (int *) ;
 int vmci_mutex_release (int *) ;
 int vmci_queue_pair_detach_hypercall (struct vmci_handle) ;

__attribute__((used)) static int
vmci_queue_pair_detach_guest_work(struct vmci_handle handle)
{
 struct qp_guest_endpoint *entry;
 int result;
 uint32_t ref_count;

 ASSERT(!VMCI_HANDLE_INVALID(handle));

 vmci_mutex_acquire(&qp_guest_endpoints.mutex);

 entry = (struct qp_guest_endpoint *)queue_pair_list_find_entry(
     &qp_guest_endpoints, handle);
 if (!entry) {
  vmci_mutex_release(&qp_guest_endpoints.mutex);
  return (VMCI_ERROR_NOT_FOUND);
 }

 ASSERT(entry->qp.ref_count >= 1);

 if (entry->qp.flags & VMCI_QPFLAG_LOCAL) {
  result = VMCI_SUCCESS;

  if (entry->qp.ref_count > 1) {
   result = queue_pair_notify_peer_local(0, handle);






  }
 } else {
  result = vmci_queue_pair_detach_hypercall(handle);
  if (entry->hibernate_failure) {
   if (result == VMCI_ERROR_NOT_FOUND) {
    ASSERT(entry->qp.ref_count == 1);
    result = VMCI_SUCCESS;
   }
  }
  if (result < VMCI_SUCCESS) {
   vmci_mutex_release(&qp_guest_endpoints.mutex);
   return (result);
  }
 }






 entry->qp.ref_count--;
 if (entry->qp.ref_count == 0)
  queue_pair_list_remove_entry(&qp_guest_endpoints, &entry->qp);


 ref_count = entry ? entry->qp.ref_count :
     0xffffffff;




 vmci_mutex_release(&qp_guest_endpoints.mutex);

 if (ref_count == 0)
  qp_guest_endpoint_destroy(entry);
 return (result);
}
