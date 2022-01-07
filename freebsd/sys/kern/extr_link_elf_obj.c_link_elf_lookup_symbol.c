
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int linker_file_t ;
typedef TYPE_1__* elf_file_t ;
typedef scalar_t__ c_linker_sym_t ;
struct TYPE_4__ {int st_name; scalar_t__ st_shndx; } ;
struct TYPE_3__ {int ddbsymcnt; char* ddbstrtab; TYPE_2__* ddbsymtab; } ;
typedef TYPE_2__ Elf_Sym ;


 int ENOENT ;
 scalar_t__ SHN_UNDEF ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int
link_elf_lookup_symbol(linker_file_t lf, const char *name, c_linker_sym_t *sym)
{
 elf_file_t ef = (elf_file_t) lf;
 const Elf_Sym *symp;
 const char *strp;
 int i;

 for (i = 0, symp = ef->ddbsymtab; i < ef->ddbsymcnt; i++, symp++) {
  strp = ef->ddbstrtab + symp->st_name;
  if (symp->st_shndx != SHN_UNDEF && strcmp(name, strp) == 0) {
   *sym = (c_linker_sym_t) symp;
   return 0;
  }
 }
 return ENOENT;
}
