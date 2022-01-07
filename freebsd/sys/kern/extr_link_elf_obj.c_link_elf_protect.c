
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_prot_t ;
typedef scalar_t__ vm_offset_t ;
typedef TYPE_3__* elf_file_t ;
struct TYPE_7__ {scalar_t__ size; } ;
struct TYPE_8__ {int nprogtab; TYPE_2__ lf; scalar_t__ address; TYPE_1__* progtab; scalar_t__ preloaded; } ;
struct TYPE_6__ {scalar_t__ size; int flags; scalar_t__ addr; int * name; } ;


 int DPCPU_SETNAME ;
 int SHF_EXECINSTR ;
 int SHF_WRITE ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_RW ;
 int VM_PROT_WRITE ;
 int VNET_SETNAME ;
 int link_elf_protect_range (TYPE_3__*,scalar_t__,scalar_t__,int) ;
 scalar_t__ round_page (scalar_t__) ;
 scalar_t__ strcmp (int *,int ) ;
 scalar_t__ trunc_page (scalar_t__) ;

__attribute__((used)) static void
link_elf_protect(elf_file_t ef)
{
 vm_offset_t end, segend, segstart, start;
 vm_prot_t gapprot, prot, segprot;
 int i;







 gapprot = ef->preloaded ? VM_PROT_RW : VM_PROT_READ;

 start = end = (vm_offset_t)ef->address;
 prot = VM_PROT_READ;
 for (i = 0; i < ef->nprogtab; i++) {




  if (ef->progtab[i].name != ((void*)0) && (



      strcmp(ef->progtab[i].name, DPCPU_SETNAME) == 0))
   continue;

  segstart = trunc_page((vm_offset_t)ef->progtab[i].addr);
  segend = round_page((vm_offset_t)ef->progtab[i].addr +
      ef->progtab[i].size);
  segprot = VM_PROT_READ;
  if ((ef->progtab[i].flags & SHF_WRITE) != 0)
   segprot |= VM_PROT_WRITE;
  if ((ef->progtab[i].flags & SHF_EXECINSTR) != 0)
   segprot |= VM_PROT_EXECUTE;

  if (end <= segstart) {






   link_elf_protect_range(ef, start, end, prot);
   link_elf_protect_range(ef, end, segstart, gapprot);

   start = segstart;
   end = segend;
   prot = segprot;
  } else if (start < segstart && end == segend) {





   link_elf_protect_range(ef, start, segstart, prot);

   start = segstart;
   prot |= segprot;
  } else if (end < segend) {







   link_elf_protect_range(ef, start, segstart, prot);
   link_elf_protect_range(ef, segstart, end,
       prot | segprot);
   start = end;
   end = segend;
   prot = segprot;
  } else {



   prot |= segprot;
  }
 }




 link_elf_protect_range(ef, start, end, prot);
 link_elf_protect_range(ef, end,
     round_page((vm_offset_t)ef->address + ef->lf.size), gapprot);
}
