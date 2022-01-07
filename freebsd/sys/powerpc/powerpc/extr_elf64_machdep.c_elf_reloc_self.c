
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ caddr_t ;
struct TYPE_5__ {scalar_t__ d_val; scalar_t__ d_ptr; } ;
struct TYPE_7__ {int d_tag; TYPE_1__ d_un; } ;
struct TYPE_6__ {scalar_t__ r_addend; scalar_t__ r_offset; int r_info; } ;
typedef TYPE_2__ Elf_Rela ;
typedef TYPE_3__ Elf_Dyn ;
typedef scalar_t__ Elf_Addr ;


 int DT_NULL ;


 scalar_t__ ELF_R_TYPE (int ) ;
 scalar_t__ R_PPC_RELATIVE ;

void
elf_reloc_self(Elf_Dyn *dynp, Elf_Addr relocbase)
{
 Elf_Rela *rela = ((void*)0), *relalim;
 Elf_Addr relasz = 0;
 Elf_Addr *where;




 for (; dynp->d_tag != DT_NULL; dynp++) {
  switch (dynp->d_tag) {
  case 129:
   rela = (Elf_Rela *)(relocbase+dynp->d_un.d_ptr);
   break;
  case 128:
   relasz = dynp->d_un.d_val;
   break;
  }
 }




 relalim = (Elf_Rela *)((caddr_t)rela + relasz);
 for (; rela < relalim; rela++) {
  if (ELF_R_TYPE(rela->r_info) != R_PPC_RELATIVE)
   continue;
  where = (Elf_Addr *)(relocbase + rela->r_offset);
  *where = (Elf_Addr)(relocbase + rela->r_addend);
 }
}
