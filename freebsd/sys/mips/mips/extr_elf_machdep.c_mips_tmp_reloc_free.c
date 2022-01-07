
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_tmp_reloc {int dummy; } ;


 int M_TEMP ;
 int free (struct mips_tmp_reloc*,int ) ;

__attribute__((used)) static void
mips_tmp_reloc_free(struct mips_tmp_reloc *r)
{

 free(r, M_TEMP);
}
