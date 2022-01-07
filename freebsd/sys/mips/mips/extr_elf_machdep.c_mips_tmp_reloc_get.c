
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_tmp_reloc {struct mips_tmp_reloc* next; } ;


 struct mips_tmp_reloc* ml ;

__attribute__((used)) static struct mips_tmp_reloc *
mips_tmp_reloc_get(void)
{
 struct mips_tmp_reloc *r;

 r = ml;
 if (r == ((void*)0))
  return (((void*)0));
 ml = ml->next;
 return (r);
}
