
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* vmci_id ;
struct vmci_handle {void* resource; void* context; } ;



__attribute__((used)) static inline struct vmci_handle
VMCI_MAKE_HANDLE(vmci_id cid, vmci_id rid)
{
 struct vmci_handle h;

 h.context = cid;
 h.resource = rid;
 return (h);
}
