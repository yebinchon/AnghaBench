
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efi_tm {int dummy; } ;


 int EFI_TIME_LOCK () ;
 int EFI_TIME_UNLOCK () ;
 int ENXIO ;
 int * efi_runtime ;
 int efi_set_time_locked (struct efi_tm*) ;

int
efi_set_time(struct efi_tm *tm)
{
 int error;

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 EFI_TIME_LOCK();
 error = efi_set_time_locked(tm);
 EFI_TIME_UNLOCK();
 return (error);
}
