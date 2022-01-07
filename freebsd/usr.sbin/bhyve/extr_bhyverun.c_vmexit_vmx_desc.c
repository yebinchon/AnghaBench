
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;


 size_t nitems (char const**) ;
 char const** vmx_exit_reason_desc ;

__attribute__((used)) static const char *
vmexit_vmx_desc(uint32_t exit_reason)
{

 if (exit_reason >= nitems(vmx_exit_reason_desc) ||
     vmx_exit_reason_desc[exit_reason] == ((void*)0))
  return ("Unknown");
 return (vmx_exit_reason_desc[exit_reason]);
}
