
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmci_privilege_flags ;
struct vmci_handle {scalar_t__ context; } ;


 int VMCI_ERROR_INVALID_ARGS ;
 scalar_t__ VMCI_INVALID_ID ;
 int vmci_datagram_get_priv_flags_int (scalar_t__,struct vmci_handle,int *) ;

int
vmci_datagram_get_priv_flags(struct vmci_handle handle,
    vmci_privilege_flags *priv_flags)
{

 if (priv_flags == ((void*)0) || handle.context == VMCI_INVALID_ID)
  return (VMCI_ERROR_INVALID_ARGS);

 return (vmci_datagram_get_priv_flags_int(handle.context, handle,
     priv_flags));
}
