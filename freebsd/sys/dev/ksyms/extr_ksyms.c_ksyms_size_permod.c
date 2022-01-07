
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsizes {long ts_symsz; int ts_strsz; } ;
typedef int linker_file_t ;
typedef int caddr_t ;
typedef int Elf_Sym ;


 scalar_t__ LINKER_STRTAB_GET (int ,int *) ;
 long LINKER_SYMTAB_GET (int ,int const**) ;

__attribute__((used)) static int
ksyms_size_permod(linker_file_t lf, void *arg)
{
 struct tsizes *ts;
 const Elf_Sym *symtab;
 caddr_t strtab;
 long syms;

 ts = arg;

 syms = LINKER_SYMTAB_GET(lf, &symtab);
 ts->ts_symsz += syms * sizeof(Elf_Sym);
 ts->ts_strsz += LINKER_STRTAB_GET(lf, &strtab);

 return (0);
}
