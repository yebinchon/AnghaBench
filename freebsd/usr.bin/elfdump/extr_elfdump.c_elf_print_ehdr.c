
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int64_t ;
typedef char* intmax_t ;
typedef int Elf32_Ehdr ;


 int E_CLASS ;
 int E_DATA ;
 int E_EHSIZE ;
 int E_ENTRY ;
 int E_FLAGS ;
 int E_MACHINE ;
 int E_OSABI ;
 int E_PHENTSIZE ;
 int E_PHNUM ;
 int E_PHOFF ;
 int E_SHENTSIZE ;
 int E_SHOFF ;
 int E_TYPE ;
 int E_VERSION ;
 char* e_machines (size_t) ;
 char** e_types ;
 char** ei_abis ;
 char** ei_classes ;
 char** ei_data ;
 char** ei_versions ;
 size_t elf_get_addr (int *,int *,int ) ;
 size_t elf_get_byte (int *,int *,int ) ;
 size_t elf_get_off (int *,int *,int ) ;
 size_t elf_get_quarter (int *,int *,int ) ;
 size_t elf_get_shnum (int *,void*) ;
 size_t elf_get_shstrndx (int *,void*) ;
 size_t elf_get_word (int *,int *,int ) ;
 int fprintf (int ,char*,...) ;
 int out ;

__attribute__((used)) static void
elf_print_ehdr(Elf32_Ehdr *e, void *sh)
{
 u_int64_t class;
 u_int64_t data;
 u_int64_t osabi;
 u_int64_t type;
 u_int64_t machine;
 u_int64_t version;
 u_int64_t entry;
 u_int64_t phoff;
 u_int64_t shoff;
 u_int64_t flags;
 u_int64_t ehsize;
 u_int64_t phentsize;
 u_int64_t phnum;
 u_int64_t shentsize;
 u_int64_t shnum;
 u_int64_t shstrndx;

 class = elf_get_byte(e, e, E_CLASS);
 data = elf_get_byte(e, e, E_DATA);
 osabi = elf_get_byte(e, e, E_OSABI);
 type = elf_get_quarter(e, e, E_TYPE);
 machine = elf_get_quarter(e, e, E_MACHINE);
 version = elf_get_word(e, e, E_VERSION);
 entry = elf_get_addr(e, e, E_ENTRY);
 phoff = elf_get_off(e, e, E_PHOFF);
 shoff = elf_get_off(e, e, E_SHOFF);
 flags = elf_get_word(e, e, E_FLAGS);
 ehsize = elf_get_quarter(e, e, E_EHSIZE);
 phentsize = elf_get_quarter(e, e, E_PHENTSIZE);
 phnum = elf_get_quarter(e, e, E_PHNUM);
 shentsize = elf_get_quarter(e, e, E_SHENTSIZE);
 fprintf(out, "\nelf header:\n");
 fprintf(out, "\n");
 fprintf(out, "\te_ident: %s %s %s\n", ei_classes[class], ei_data[data],
     ei_abis[osabi]);
 fprintf(out, "\te_type: %s\n", e_types[type]);
 fprintf(out, "\te_machine: %s\n", e_machines(machine));
 fprintf(out, "\te_version: %s\n", ei_versions[version]);
 fprintf(out, "\te_entry: %#jx\n", (intmax_t)entry);
 fprintf(out, "\te_phoff: %jd\n", (intmax_t)phoff);
 fprintf(out, "\te_shoff: %jd\n", (intmax_t)shoff);
 fprintf(out, "\te_flags: %jd\n", (intmax_t)flags);
 fprintf(out, "\te_ehsize: %jd\n", (intmax_t)ehsize);
 fprintf(out, "\te_phentsize: %jd\n", (intmax_t)phentsize);
 fprintf(out, "\te_phnum: %jd\n", (intmax_t)phnum);
 fprintf(out, "\te_shentsize: %jd\n", (intmax_t)shentsize);
 if (sh != ((void*)0)) {
  shnum = elf_get_shnum(e, sh);
  shstrndx = elf_get_shstrndx(e, sh);
  fprintf(out, "\te_shnum: %jd\n", (intmax_t)shnum);
  fprintf(out, "\te_shstrndx: %jd\n", (intmax_t)shstrndx);
 }
}
