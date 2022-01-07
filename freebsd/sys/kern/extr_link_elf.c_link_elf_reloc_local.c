
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_2__ {int relsize; int relasize; scalar_t__ address; int * rela; int * rel; } ;
typedef int Elf_Rela ;
typedef int Elf_Rel ;
typedef int Elf_Addr ;


 int ELF_RELOC_REL ;
 int ELF_RELOC_RELA ;
 int elf_lookup ;
 int elf_reloc_local (int ,int ,int const*,int ,int ) ;

__attribute__((used)) static void
link_elf_reloc_local(linker_file_t lf)
{
 const Elf_Rel *rellim;
 const Elf_Rel *rel;
 const Elf_Rela *relalim;
 const Elf_Rela *rela;
 elf_file_t ef = (elf_file_t)lf;


 if ((rel = ef->rel) != ((void*)0)) {
  rellim = (const Elf_Rel *)((const char *)ef->rel + ef->relsize);
  while (rel < rellim) {
   elf_reloc_local(lf, (Elf_Addr)ef->address, rel,
       ELF_RELOC_REL, elf_lookup);
   rel++;
  }
 }


 if ((rela = ef->rela) != ((void*)0)) {
  relalim = (const Elf_Rela *)
      ((const char *)ef->rela + ef->relasize);
  while (rela < relalim) {
   elf_reloc_local(lf, (Elf_Addr)ef->address, rela,
       ELF_RELOC_RELA, elf_lookup);
   rela++;
  }
 }
}
