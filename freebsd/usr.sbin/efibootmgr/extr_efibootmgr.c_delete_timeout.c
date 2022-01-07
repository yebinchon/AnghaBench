
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFI_GLOBAL_GUID ;
 int efi_del_variable (int ,char*) ;

__attribute__((used)) static void
delete_timeout(void)
{

 efi_del_variable(EFI_GLOBAL_GUID,"Timeout");
}
