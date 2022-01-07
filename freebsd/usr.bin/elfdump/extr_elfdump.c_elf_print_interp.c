
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int Elf32_Ehdr ;


 int P_OFFSET ;
 int elf_get_off (int *,void*,int ) ;
 int fprintf (int ,char*,...) ;
 int out ;

__attribute__((used)) static void
elf_print_interp(Elf32_Ehdr *e, void *p)
{
 u_int64_t offset;
 char *s;

 offset = elf_get_off(e, p, P_OFFSET);
 s = (char *)e + offset;
 fprintf(out, "\ninterp:\n");
 fprintf(out, "\t%s\n", s);
}
