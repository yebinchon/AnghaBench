
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_privilege_flags ;
typedef int vmci_id ;
typedef int uint64_t ;
typedef int uint32_t ;
struct vmci_queue {int dummy; } ;
struct vmci_handle {int dummy; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_QP_ALL_FLAGS ;
 int vmci_queue_pair_alloc_guest_work (struct vmci_handle*,struct vmci_queue**,int ,struct vmci_queue**,int ,int ,int,int ) ;

int
vmci_queue_pair_alloc(struct vmci_handle *handle, struct vmci_queue **produce_q,
    uint64_t produce_size, struct vmci_queue **consume_q, uint64_t consume_size,
    vmci_id peer, uint32_t flags, vmci_privilege_flags priv_flags)
{

 if (!handle || !produce_q || !consume_q ||
     (!produce_size && !consume_size) || (flags & ~VMCI_QP_ALL_FLAGS))
  return (VMCI_ERROR_INVALID_ARGS);

 return (vmci_queue_pair_alloc_guest_work(handle, produce_q,
     produce_size, consume_q, consume_size, peer, flags, priv_flags));
}
