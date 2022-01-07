
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_file {scalar_t__ address; int * dynamic; int modptr; } ;
typedef struct elf_file* elf_file_t ;
typedef int caddr_t ;
typedef int Elf_Dyn ;


 int _DYNAMIC ;
 int bzero_early (struct elf_file*,int) ;
 int elf_lookup_ifunc ;
 int elf_reloc ;
 int link_elf_preload_parse_symbols (struct elf_file*) ;
 int parse_dynamic (struct elf_file*) ;
 int relocate_file1 (struct elf_file*,int ,int ,int) ;

void
link_elf_ireloc(caddr_t kmdp)
{
 struct elf_file eff;
 elf_file_t ef;

 ef = &eff;

 bzero_early(ef, sizeof(*ef));

 ef->modptr = kmdp;
 ef->dynamic = (Elf_Dyn *)&_DYNAMIC;
 parse_dynamic(ef);
 ef->address = 0;
 link_elf_preload_parse_symbols(ef);
 relocate_file1(ef, elf_lookup_ifunc, elf_reloc, 1);
}
