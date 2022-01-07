
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
struct TYPE_2__ {long ddbsymcnt; int * ddbsymtab; } ;
typedef int Elf_Sym ;



__attribute__((used)) static long
link_elf_symtab_get(linker_file_t lf, const Elf_Sym **symtab)
{
 elf_file_t ef = (elf_file_t)lf;

 *symtab = ef->ddbsymtab;

 if (*symtab == ((void*)0))
  return (0);

 return (ef->ddbsymcnt);
}
