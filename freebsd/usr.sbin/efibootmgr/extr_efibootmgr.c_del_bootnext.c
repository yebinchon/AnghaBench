
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFI_GLOBAL_GUID ;
 scalar_t__ efi_del_variable (int ,char*) ;
 int err (int,char*) ;

__attribute__((used)) static void
del_bootnext(void)
{

 if (efi_del_variable(EFI_GLOBAL_GUID, "BootNext") < 0)
  err(1, "efi_del_variable");
}
