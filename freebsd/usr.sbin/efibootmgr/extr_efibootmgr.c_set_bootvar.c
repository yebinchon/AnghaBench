
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int COMMON_ATTRS ;
 int EFI_GLOBAL_GUID ;
 int efi_set_variable (int ,char const*,int *,size_t,int ) ;

__attribute__((used)) static int
set_bootvar(const char *name, uint8_t *data, size_t size)
{

 return efi_set_variable(EFI_GLOBAL_GUID, name, data, size,
     COMMON_ATTRS);
}
