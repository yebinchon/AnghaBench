
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efirt_callinfo {char* ec_name; int ec_argcnt; uintptr_t ec_arg1; int ec_fptr; } ;
struct efi_tm {int dummy; } ;
typedef int ec ;


 int EFI_RT_METHOD_PA (int ) ;
 int EFI_TIME_OWNED () ;
 int ENXIO ;
 int bzero (struct efirt_callinfo*,int) ;
 int efi_call (struct efirt_callinfo*) ;
 int * efi_runtime ;
 int rt_settime ;

__attribute__((used)) static int
efi_set_time_locked(struct efi_tm *tm)
{
 struct efirt_callinfo ec;

 EFI_TIME_OWNED();
 if (efi_runtime == ((void*)0))
  return (ENXIO);
 bzero(&ec, sizeof(ec));
 ec.ec_name = "rt_settime";
 ec.ec_argcnt = 1;
 ec.ec_arg1 = (uintptr_t)tm;
 ec.ec_fptr = EFI_RT_METHOD_PA(rt_settime);
 return (efi_call(&ec));
}
