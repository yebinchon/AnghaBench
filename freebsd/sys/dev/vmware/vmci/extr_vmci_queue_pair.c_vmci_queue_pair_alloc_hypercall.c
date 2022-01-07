
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ payload_size; int src; int dst; } ;
struct vmci_queue_pair_alloc_msg {int flags; int num_ppns; int consume_size; int produce_size; int peer; int handle; TYPE_1__ hdr; } ;
struct vmci_datagram {int dummy; } ;
struct TYPE_4__ {int flags; int consume_size; int produce_size; int peer; int handle; } ;
struct qp_guest_endpoint {int num_ppns; int ppn_set; TYPE_2__ qp; } ;
typedef int PPN ;


 int ASSERT (int) ;
 int VMCI_ANON_SRC_HANDLE ;
 scalar_t__ VMCI_DG_HEADERSIZE ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 int VMCI_MEMORY_NORMAL ;
 int VMCI_QPFLAG_LOCAL ;
 int VMCI_QUEUEPAIR_ALLOC ;
 int VMCI_SUCCESS ;
 struct vmci_queue_pair_alloc_msg* vmci_alloc_kernel_mem (size_t,int ) ;
 int vmci_free_kernel_mem (struct vmci_queue_pair_alloc_msg*,size_t) ;
 int vmci_populate_ppn_list (int *,int *) ;
 int vmci_send_datagram (struct vmci_datagram*) ;

__attribute__((used)) static int
vmci_queue_pair_alloc_hypercall(const struct qp_guest_endpoint *entry)
{
 struct vmci_queue_pair_alloc_msg *alloc_msg;
 size_t msg_size;
 int result;

 if (!entry || entry->num_ppns <= 2)
  return (VMCI_ERROR_INVALID_ARGS);

 ASSERT(!(entry->qp.flags & VMCI_QPFLAG_LOCAL));

 msg_size = sizeof(*alloc_msg) + (size_t)entry->num_ppns * sizeof(PPN);
 alloc_msg = vmci_alloc_kernel_mem(msg_size, VMCI_MEMORY_NORMAL);
 if (!alloc_msg)
  return (VMCI_ERROR_NO_MEM);

 alloc_msg->hdr.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
     VMCI_QUEUEPAIR_ALLOC);
 alloc_msg->hdr.src = VMCI_ANON_SRC_HANDLE;
 alloc_msg->hdr.payload_size = msg_size - VMCI_DG_HEADERSIZE;
 alloc_msg->handle = entry->qp.handle;
 alloc_msg->peer = entry->qp.peer;
 alloc_msg->flags = entry->qp.flags;
 alloc_msg->produce_size = entry->qp.produce_size;
 alloc_msg->consume_size = entry->qp.consume_size;
 alloc_msg->num_ppns = entry->num_ppns;
 result = vmci_populate_ppn_list((uint8_t *)alloc_msg +
     sizeof(*alloc_msg), &entry->ppn_set);
 if (result == VMCI_SUCCESS)
  result = vmci_send_datagram((struct vmci_datagram *)alloc_msg);
 vmci_free_kernel_mem(alloc_msg, msg_size);

 return (result);
}
