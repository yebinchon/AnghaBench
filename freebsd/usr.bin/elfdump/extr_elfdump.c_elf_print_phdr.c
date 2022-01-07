
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef char* intmax_t ;
typedef int Elf32_Ehdr ;


 int E_PHENTSIZE ;
 int E_PHNUM ;
 int P_ALIGN ;
 int P_FILESZ ;
 int P_FLAGS ;
 int P_MEMSZ ;
 int P_OFFSET ;
 int P_PADDR ;
 int P_TYPE ;
 int P_VADDR ;
 scalar_t__ elf_get_addr (int *,void*,int ) ;
 scalar_t__ elf_get_off (int *,void*,int ) ;
 scalar_t__ elf_get_quarter (int *,int *,int ) ;
 scalar_t__ elf_get_size (int *,void*,int ) ;
 scalar_t__ elf_get_word (int *,void*,int ) ;
 int fprintf (int ,char*,...) ;
 int out ;
 char** p_flags ;
 char** p_types ;

__attribute__((used)) static void
elf_print_phdr(Elf32_Ehdr *e, void *p)
{
 u_int64_t phentsize;
 u_int64_t phnum;
 u_int64_t type;
 u_int64_t offset;
 u_int64_t vaddr;
 u_int64_t paddr;
 u_int64_t filesz;
 u_int64_t memsz;
 u_int64_t flags;
 u_int64_t align;
 void *v;
 int i;

 phentsize = elf_get_quarter(e, e, E_PHENTSIZE);
 phnum = elf_get_quarter(e, e, E_PHNUM);
 fprintf(out, "\nprogram header:\n");
 for (i = 0; (u_int64_t)i < phnum; i++) {
  v = (char *)p + i * phentsize;
  type = elf_get_word(e, v, P_TYPE);
  offset = elf_get_off(e, v, P_OFFSET);
  vaddr = elf_get_addr(e, v, P_VADDR);
  paddr = elf_get_addr(e, v, P_PADDR);
  filesz = elf_get_size(e, v, P_FILESZ);
  memsz = elf_get_size(e, v, P_MEMSZ);
  flags = elf_get_word(e, v, P_FLAGS);
  align = elf_get_size(e, v, P_ALIGN);
  fprintf(out, "\n");
  fprintf(out, "entry: %d\n", i);
  fprintf(out, "\tp_type: %s\n", p_types[type & 0x7]);
  fprintf(out, "\tp_offset: %jd\n", (intmax_t)offset);
  fprintf(out, "\tp_vaddr: %#jx\n", (intmax_t)vaddr);
  fprintf(out, "\tp_paddr: %#jx\n", (intmax_t)paddr);
  fprintf(out, "\tp_filesz: %jd\n", (intmax_t)filesz);
  fprintf(out, "\tp_memsz: %jd\n", (intmax_t)memsz);
  fprintf(out, "\tp_flags: %s\n", p_flags[flags]);
  fprintf(out, "\tp_align: %jd\n", (intmax_t)align);
 }
}
