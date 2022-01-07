
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENXIO ;
 int * efi_runtime ;

int
efi_rt_ok(void)
{

 if (efi_runtime == ((void*)0))
  return (ENXIO);
 return (0);
}
