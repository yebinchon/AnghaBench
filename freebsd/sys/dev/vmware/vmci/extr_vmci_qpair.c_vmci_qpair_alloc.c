
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_privilege_flags ;
typedef int vmci_id ;
typedef int * vmci_event_release_cb ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct vmci_handle {int dummy; } ;
struct vmci_qpair {int flags; struct vmci_handle handle; int priv_flags; int peer; scalar_t__ consume_q_size; int consume_q; scalar_t__ produce_q_size; int produce_q; } ;


 scalar_t__ MAX (scalar_t__,scalar_t__) ;
 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_ERROR_NO_MEM ;
 int VMCI_ERROR_NO_RESOURCES ;
 scalar_t__ VMCI_MAX_GUEST_QP_MEMORY ;
 int VMCI_MEMORY_NORMAL ;
 int VMCI_QPFLAG_NONBLOCK ;
 int VMCI_SUCCESS ;
 struct vmci_qpair* vmci_alloc_kernel_mem (int,int ) ;
 int vmci_free_kernel_mem (struct vmci_qpair*,int) ;
 int vmci_queue_pair_alloc (struct vmci_handle*,int *,scalar_t__,int *,scalar_t__,int ,int,int ) ;

int
vmci_qpair_alloc(struct vmci_qpair **qpair, struct vmci_handle *handle,
    uint64_t produce_q_size, uint64_t consume_q_size, vmci_id peer,
    uint32_t flags, vmci_privilege_flags priv_flags)
{
 struct vmci_qpair *my_qpair;
 vmci_event_release_cb wakeup_cb;
 void *client_data;
 int retval;
 if (produce_q_size + consume_q_size <
     MAX(produce_q_size, consume_q_size) ||
     produce_q_size + consume_q_size > VMCI_MAX_GUEST_QP_MEMORY)
  return (VMCI_ERROR_NO_RESOURCES);

 if (flags & VMCI_QPFLAG_NONBLOCK)
  return (VMCI_ERROR_INVALID_ARGS);

 my_qpair = vmci_alloc_kernel_mem(sizeof(*my_qpair), VMCI_MEMORY_NORMAL);
 if (!my_qpair)
  return (VMCI_ERROR_NO_MEM);

 my_qpair->produce_q_size = produce_q_size;
 my_qpair->consume_q_size = consume_q_size;
 my_qpair->peer = peer;
 my_qpair->flags = flags;
 my_qpair->priv_flags = priv_flags;

 client_data = ((void*)0);
 wakeup_cb = ((void*)0);

 retval = vmci_queue_pair_alloc(handle, &my_qpair->produce_q,
     my_qpair->produce_q_size, &my_qpair->consume_q,
     my_qpair->consume_q_size, my_qpair->peer, my_qpair->flags,
     my_qpair->priv_flags);

 if (retval < VMCI_SUCCESS) {
  vmci_free_kernel_mem(my_qpair, sizeof(*my_qpair));
  return (retval);
 }

 *qpair = my_qpair;
 my_qpair->handle = *handle;

 return (retval);
}
