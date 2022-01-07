
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_memattr_t ;
typedef int uint64_t ;


 int EFI_MD_ATTR_UC ;
 int EFI_MD_ATTR_WB ;
 int EFI_MD_ATTR_WC ;
 int EFI_MD_ATTR_WP ;
 int EFI_MD_ATTR_WT ;
 int VM_MEMATTR_UNCACHEABLE ;
 int VM_MEMATTR_WRITE_BACK ;
 int VM_MEMATTR_WRITE_COMBINING ;
 int VM_MEMATTR_WRITE_PROTECTED ;
 int VM_MEMATTR_WRITE_THROUGH ;
 scalar_t__ bootverbose ;
 int printf (char*,int) ;

__attribute__((used)) static vm_memattr_t
nvdimm_spa_memattr(uint64_t efi_mem_flags)
{
 vm_memattr_t mode;

 if ((efi_mem_flags & EFI_MD_ATTR_WB) != 0)
  mode = VM_MEMATTR_WRITE_BACK;
 else if ((efi_mem_flags & EFI_MD_ATTR_WT) != 0)
  mode = VM_MEMATTR_WRITE_THROUGH;
 else if ((efi_mem_flags & EFI_MD_ATTR_WC) != 0)
  mode = VM_MEMATTR_WRITE_COMBINING;
 else if ((efi_mem_flags & EFI_MD_ATTR_WP) != 0)
  mode = VM_MEMATTR_WRITE_PROTECTED;
 else if ((efi_mem_flags & EFI_MD_ATTR_UC) != 0)
  mode = VM_MEMATTR_UNCACHEABLE;
 else {
  if (bootverbose)
   printf("SPA mapping attr %#lx unsupported\n",
       efi_mem_flags);
  mode = VM_MEMATTR_UNCACHEABLE;
 }
 return (mode);
}
