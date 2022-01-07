
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efirt_callinfo {char* ec_name; int ec_argcnt; uintptr_t ec_arg1; uintptr_t ec_arg2; uintptr_t ec_arg3; uintptr_t ec_arg4; int ec_fptr; } ;
typedef enum efi_reset { ____Placeholder_efi_reset } efi_reset ;
typedef int ec ;





 int EFI_RT_METHOD_PA (int ) ;
 int EINVAL ;
 int ENXIO ;
 int bzero (struct efirt_callinfo*,int) ;
 int efi_call (struct efirt_callinfo*) ;
 int * efi_runtime ;
 int rt_reset ;

int
efi_reset_system(enum efi_reset type)
{
 struct efirt_callinfo ec;

 switch (type) {
 case 130:
 case 128:
 case 129:
  break;
 default:
  return (EINVAL);
 }
 if (efi_runtime == ((void*)0))
  return (ENXIO);
 bzero(&ec, sizeof(ec));
 ec.ec_name = "rt_reset";
 ec.ec_argcnt = 4;
 ec.ec_arg1 = (uintptr_t)type;
 ec.ec_arg2 = (uintptr_t)0;
 ec.ec_arg3 = (uintptr_t)0;
 ec.ec_arg4 = (uintptr_t)((void*)0);
 ec.ec_fptr = EFI_RT_METHOD_PA(rt_reset);
 return (efi_call(&ec));
}
