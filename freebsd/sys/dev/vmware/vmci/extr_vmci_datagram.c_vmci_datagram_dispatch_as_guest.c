
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_resource {int dummy; } ;
struct vmci_datagram {int src; } ;


 int VMCI_ERROR_NO_HANDLE ;
 int VMCI_RESOURCE_TYPE_DATAGRAM ;
 struct vmci_resource* vmci_resource_get (int ,int ) ;
 int vmci_resource_release (struct vmci_resource*) ;
 int vmci_send_datagram (struct vmci_datagram*) ;

__attribute__((used)) static int
vmci_datagram_dispatch_as_guest(struct vmci_datagram *dg)
{
 struct vmci_resource *resource;
 int retval;

 resource = vmci_resource_get(dg->src, VMCI_RESOURCE_TYPE_DATAGRAM);
 if (((void*)0) == resource)
  return VMCI_ERROR_NO_HANDLE;

 retval = vmci_send_datagram(dg);
 vmci_resource_release(resource);

 return (retval);
}
