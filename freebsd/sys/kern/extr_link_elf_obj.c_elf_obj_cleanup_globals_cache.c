
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* elf_file_t ;
struct TYPE_5__ {scalar_t__ st_shndx; scalar_t__ st_value; } ;
struct TYPE_4__ {scalar_t__ ddbsymcnt; TYPE_2__* ddbsymtab; } ;
typedef TYPE_2__ Elf_Sym ;
typedef scalar_t__ Elf_Size ;


 scalar_t__ SHN_FBSD_CACHED ;
 scalar_t__ SHN_UNDEF ;

__attribute__((used)) static void
elf_obj_cleanup_globals_cache(elf_file_t ef)
{
 Elf_Sym *sym;
 Elf_Size i;

 for (i = 0; i < ef->ddbsymcnt; i++) {
  sym = ef->ddbsymtab + i;
  if (sym->st_shndx == SHN_FBSD_CACHED) {
   sym->st_shndx = SHN_UNDEF;
   sym->st_value = 0;
  }
 }
}
