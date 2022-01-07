
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcma_intr {int i_sel; int i_mapped; } ;


 int KASSERT (int,char*) ;
 int M_BHND ;
 int free (struct bcma_intr*,int ) ;

void
bcma_free_intr(struct bcma_intr *intr)
{
 KASSERT(!intr->i_mapped, ("interrupt %u still mapped", intr->i_sel));

 free(intr, M_BHND);
}
