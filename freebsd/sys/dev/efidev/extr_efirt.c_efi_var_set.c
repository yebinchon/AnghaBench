
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct uuid {int dummy; } ;
struct efirt_callinfo {int ec_argcnt; char* ec_name; uintptr_t ec_arg1; uintptr_t ec_arg2; uintptr_t ec_arg3; uintptr_t ec_arg4; uintptr_t ec_arg5; int ec_fptr; } ;
typedef int efi_char ;
typedef int ec ;


 int EFI_RT_METHOD_PA (int ) ;
 int ENXIO ;
 int bzero (struct efirt_callinfo*,int) ;
 int efi_call (struct efirt_callinfo*) ;
 int * efi_runtime ;
 int rt_setvar ;

int
efi_var_set(efi_char *name, struct uuid *vendor, uint32_t attrib,
    size_t datasize, void *data)
{
 struct efirt_callinfo ec;

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 bzero(&ec, sizeof(ec));
 ec.ec_argcnt = 5;
 ec.ec_name = "rt_setvar";
 ec.ec_arg1 = (uintptr_t)name;
 ec.ec_arg2 = (uintptr_t)vendor;
 ec.ec_arg3 = (uintptr_t)attrib;
 ec.ec_arg4 = (uintptr_t)datasize;
 ec.ec_arg5 = (uintptr_t)data;
 ec.ec_fptr = EFI_RT_METHOD_PA(rt_setvar);
 return (efi_call(&ec));
}
