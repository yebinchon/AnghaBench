
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_7__ {int e_phnum; scalar_t__ e_phoff; } ;
struct TYPE_6__ {scalar_t__ p_type; int p_flags; int p_memsz; scalar_t__ p_vaddr; } ;
struct TYPE_5__ {scalar_t__ address; } ;
typedef TYPE_2__ Elf_Phdr ;
typedef TYPE_3__ Elf_Ehdr ;


 int PF_W ;
 int PF_X ;
 scalar_t__ PT_LOAD ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int pmap_change_prot (scalar_t__,int ,int) ;
 int round_page (int ) ;

__attribute__((used)) static int
preload_protect(elf_file_t ef, vm_prot_t prot)
{

 Elf_Ehdr *hdr;
 Elf_Phdr *phdr, *phlimit;
 vm_prot_t nprot;
 int error;

 error = 0;
 hdr = (Elf_Ehdr *)ef->address;
 phdr = (Elf_Phdr *)(ef->address + hdr->e_phoff);
 phlimit = phdr + hdr->e_phnum;
 for (; phdr < phlimit; phdr++) {
  if (phdr->p_type != PT_LOAD)
   continue;

  nprot = prot | VM_PROT_READ;
  if ((phdr->p_flags & PF_W) != 0)
   nprot |= VM_PROT_WRITE;
  if ((phdr->p_flags & PF_X) != 0)
   nprot |= VM_PROT_EXECUTE;
  error = pmap_change_prot((vm_offset_t)ef->address +
      phdr->p_vaddr, round_page(phdr->p_memsz), nprot);
  if (error != 0)
   break;
 }
 return (error);



}
