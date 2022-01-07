
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_tmcap {int dummy; } ;
struct efi_tm {int dummy; } ;


 int EFI_TIME_LOCK () ;
 int EFI_TIME_UNLOCK () ;
 int ENXIO ;
 int efi_get_time_locked (struct efi_tm*,struct efi_tmcap*) ;
 int * efi_runtime ;

int
efi_get_time_capabilities(struct efi_tmcap *tmcap)
{
 struct efi_tm dummy;
 int error;

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 EFI_TIME_LOCK();
 error = efi_get_time_locked(&dummy, tmcap);
 EFI_TIME_UNLOCK();
 return (error);
}
