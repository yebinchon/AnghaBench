
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efirt_callinfo {char* ec_name; int ec_efi_status; } ;


 scalar_t__ bootverbose ;
 int efi_enter () ;
 int efi_leave () ;
 int efi_rt_arch_call (struct efirt_callinfo*) ;
 int efi_rt_arch_call_nofault (struct efirt_callinfo*) ;
 scalar_t__ efi_rt_handle_faults ;
 int efi_status_to_errno (int ) ;
 int printf (char*,char*,int) ;

__attribute__((used)) static int
efi_call(struct efirt_callinfo *ecp)
{
 int error;

 error = efi_enter();
 if (error != 0)
  return (error);
 error = efi_rt_handle_faults ? efi_rt_arch_call(ecp) :
     efi_rt_arch_call_nofault(ecp);
 efi_leave();
 if (error == 0)
  error = efi_status_to_errno(ecp->ec_efi_status);
 else if (bootverbose)
  printf("EFI %s call faulted, error %d\n", ecp->ec_name, error);
 return (error);
}
