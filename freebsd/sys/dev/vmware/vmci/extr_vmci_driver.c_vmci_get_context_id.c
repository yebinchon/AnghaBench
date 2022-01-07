
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vmci_id ;
typedef int uint32_t ;
struct vmci_datagram {scalar_t__ payload_size; int src; int dst; } ;


 int VMCI_ANON_SRC_HANDLE ;
 int VMCI_GET_CONTEXT_ID ;
 int VMCI_HYPERVISOR_CONTEXT_ID ;
 scalar_t__ VMCI_INVALID_ID ;
 int VMCI_MAKE_HANDLE (int ,int ) ;
 scalar_t__ atomic_load_int (int *) ;
 int atomic_store_int (int *,int ) ;
 int vm_context_id ;
 int vmci_send_datagram (struct vmci_datagram*) ;

vmci_id
vmci_get_context_id(void)
{
 if (atomic_load_int(&vm_context_id) == VMCI_INVALID_ID) {
  uint32_t result;
  struct vmci_datagram get_cid_msg;
  get_cid_msg.dst = VMCI_MAKE_HANDLE(VMCI_HYPERVISOR_CONTEXT_ID,
      VMCI_GET_CONTEXT_ID);
  get_cid_msg.src = VMCI_ANON_SRC_HANDLE;
  get_cid_msg.payload_size = 0;
  result = vmci_send_datagram(&get_cid_msg);
  atomic_store_int(&vm_context_id, result);
 }
 return (atomic_load_int(&vm_context_id));
}
