
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uuid {int dummy; } ;
struct efirt_callinfo {int ec_argcnt; char* ec_name; uintptr_t ec_arg1; uintptr_t ec_arg2; uintptr_t ec_arg3; int ec_fptr; } ;
typedef int efi_char ;
typedef int ec ;


 int EFI_RT_METHOD_PA (int ) ;
 int ENXIO ;
 int bzero (struct efirt_callinfo*,int) ;
 int efi_call (struct efirt_callinfo*) ;
 int * efi_runtime ;
 int rt_scanvar ;

int
efi_var_nextname(size_t *namesize, efi_char *name, struct uuid *vendor)
{
 struct efirt_callinfo ec;

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 bzero(&ec, sizeof(ec));
 ec.ec_argcnt = 3;
 ec.ec_name = "rt_scanvar";
 ec.ec_arg1 = (uintptr_t)namesize;
 ec.ec_arg2 = (uintptr_t)name;
 ec.ec_arg3 = (uintptr_t)vendor;
 ec.ec_fptr = EFI_RT_METHOD_PA(rt_scanvar);
 return (efi_call(&ec));
}
