
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int Elf32_Ehdr ;


 int SH_ADDRALIGN ;
 int SH_OFFSET ;
 int SH_SIZE ;
 int elf_get_addr (int *,char*,int ) ;
 int elf_get_off (int *,void*,int ) ;
 int elf_get_size (int *,void*,int ) ;
 int fprintf (int ,char*,...) ;
 int out ;

__attribute__((used)) static void
elf_print_got(Elf32_Ehdr *e, void *sh)
{
 u_int64_t offset;
 u_int64_t addralign;
 u_int64_t size;
 u_int64_t addr;
 void *v;
 int i;

 offset = elf_get_off(e, sh, SH_OFFSET);
 addralign = elf_get_size(e, sh, SH_ADDRALIGN);
 size = elf_get_size(e, sh, SH_SIZE);
 v = (char *)e + offset;
 fprintf(out, "\nglobal offset table:\n");
 for (i = 0; (u_int64_t)i < size / addralign; i++) {
  addr = elf_get_addr(e, (char *)v + i * addralign, 0);
  fprintf(out, "\n");
  fprintf(out, "entry: %d\n", i);
  fprintf(out, "\t%#jx\n", addr);
 }
}
