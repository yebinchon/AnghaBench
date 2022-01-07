
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmci_datagram {int dummy; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 int VMCI_INVALID_ID ;
 int vmci_datagram_dispatch (int ,struct vmci_datagram*) ;

int
vmci_datagram_send(struct vmci_datagram *msg)
{

 if (msg == ((void*)0))
  return (VMCI_ERROR_INVALID_ARGS);

 return (vmci_datagram_dispatch(VMCI_INVALID_ID, msg));
}
