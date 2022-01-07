
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_2__ {scalar_t__ nchains; int const* symtab; } ;
typedef int Elf_Sym ;
typedef scalar_t__ Elf_Size ;



const Elf_Sym *
elf_get_sym(linker_file_t lf, Elf_Size symidx)
{
 elf_file_t ef = (elf_file_t)lf;

 if (symidx >= ef->nchains)
  return (((void*)0));
 return (ef->symtab + symidx);
}
