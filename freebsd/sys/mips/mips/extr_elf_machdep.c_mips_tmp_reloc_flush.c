
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_tmp_reloc {struct mips_tmp_reloc* next; } ;


 int M_TEMP ;
 int free (struct mips_tmp_reloc*,int ) ;
 struct mips_tmp_reloc* ml ;

__attribute__((used)) static void
mips_tmp_reloc_flush(void)
{
 struct mips_tmp_reloc *r, *rn;

 r = ml;
 ml = ((void*)0);
 while (r != ((void*)0)) {
  rn = r->next;
  free(r, M_TEMP);
  r = rn;
 }
}
