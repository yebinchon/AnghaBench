
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_softc {int * msix_vec; } ;


 int M_NTB ;
 int free (int *,int ) ;

__attribute__((used)) static void
intel_ntb_free_msix_vec(struct ntb_softc *ntb)
{

 if (ntb->msix_vec == ((void*)0))
  return;

 free(ntb->msix_vec, M_NTB);
 ntb->msix_vec = ((void*)0);
}
