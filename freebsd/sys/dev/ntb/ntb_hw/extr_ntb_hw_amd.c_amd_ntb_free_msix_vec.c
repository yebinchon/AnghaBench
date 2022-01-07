
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_softc {int * msix_vec; scalar_t__ msix_vec_count; int device; } ;


 int M_AMD_NTB ;
 int free (int *,int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
amd_ntb_free_msix_vec(struct amd_ntb_softc *ntb)
{
 if (ntb->msix_vec_count) {
  pci_release_msi(ntb->device);
  ntb->msix_vec_count = 0;
 }

 if (ntb->msix_vec != ((void*)0)) {
  free(ntb->msix_vec, M_AMD_NTB);
  ntb->msix_vec = ((void*)0);
 }
}
