
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xbb_softc {scalar_t__ kva; int * kva_free; scalar_t__ gnt_base_addr; int * pseudo_phys_res; int pseudo_phys_res_id; int dev; } ;


 int M_XENBLOCKBACK ;
 int free (int *,int ) ;
 int xenmem_free (int ,int ,int *) ;

__attribute__((used)) static void
xbb_free_communication_mem(struct xbb_softc *xbb)
{
 if (xbb->kva != 0) {
  if (xbb->pseudo_phys_res != ((void*)0)) {
   xenmem_free(xbb->dev, xbb->pseudo_phys_res_id,
       xbb->pseudo_phys_res);
   xbb->pseudo_phys_res = ((void*)0);
  }
 }
 xbb->kva = 0;
 xbb->gnt_base_addr = 0;
 if (xbb->kva_free != ((void*)0)) {
  free(xbb->kva_free, M_XENBLOCKBACK);
  xbb->kva_free = ((void*)0);
 }
}
