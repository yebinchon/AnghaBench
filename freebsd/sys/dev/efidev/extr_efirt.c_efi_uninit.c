
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * efi_cfgtbl ;
 int efi_destroy_1t1_map () ;
 int efi_lock ;
 int * efi_runtime ;
 int * efi_shutdown_tag ;
 int * efi_systbl ;
 int mtx_destroy (int *) ;
 int shutdown_final ;

__attribute__((used)) static void
efi_uninit(void)
{


 if (efi_runtime == ((void*)0))
  return;
 if (efi_shutdown_tag != ((void*)0))
  EVENTHANDLER_DEREGISTER(shutdown_final, efi_shutdown_tag);
 efi_destroy_1t1_map();

 efi_systbl = ((void*)0);
 efi_cfgtbl = ((void*)0);
 efi_runtime = ((void*)0);

 mtx_destroy(&efi_lock);
}
