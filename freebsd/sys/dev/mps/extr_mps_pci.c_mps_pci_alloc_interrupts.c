
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mps_softc {scalar_t__ disable_msix; int max_msix; scalar_t__ disable_msi; int msi_msgs; int mps_flags; int mps_dev; } ;
typedef int device_t ;


 int MPS_FLAGS_INTX ;
 int MPS_FLAGS_MSI ;
 int MPS_INIT ;
 int MPS_MSIX_MAX ;
 int MPS_MSI_MAX ;
 int min (int,int) ;
 int mps_alloc_msi (struct mps_softc*,int) ;
 int mps_alloc_msix (struct mps_softc*,int) ;
 int mps_dprint (struct mps_softc*,int ,char*,...) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;

__attribute__((used)) static int
mps_pci_alloc_interrupts(struct mps_softc *sc)
{
 device_t dev;
 int error, msgs;

 dev = sc->mps_dev;
 error = 0;
 msgs = 0;

 if (sc->disable_msix == 0) {
  msgs = pci_msix_count(dev);
  mps_dprint(sc, MPS_INIT, "Counted %d MSI-X messages\n", msgs);
  msgs = min(msgs, sc->max_msix);
  msgs = min(msgs, MPS_MSIX_MAX);
  msgs = min(msgs, 1);
  if (msgs != 0) {
   mps_dprint(sc, MPS_INIT, "Attempting to allocate %d "
       "MSI-X messages\n", msgs);
   error = mps_alloc_msix(sc, msgs);
  }
 }
 if (((error != 0) || (msgs == 0)) && (sc->disable_msi == 0)) {
  msgs = pci_msi_count(dev);
  mps_dprint(sc, MPS_INIT, "Counted %d MSI messages\n", msgs);
  msgs = min(msgs, MPS_MSI_MAX);
  if (msgs != 0) {
   mps_dprint(sc, MPS_INIT, "Attempting to allocate %d "
       "MSI messages\n", MPS_MSI_MAX);
   error = mps_alloc_msi(sc, MPS_MSI_MAX);
  }
 }
 if ((error != 0) || (msgs == 0)) {




  mps_dprint(sc, MPS_INIT, "Falling back to legacy INTx\n");
  sc->mps_flags |= MPS_FLAGS_INTX;
  msgs = 1;
 } else
  sc->mps_flags |= MPS_FLAGS_MSI;

 sc->msi_msgs = msgs;
 mps_dprint(sc, MPS_INIT, "Allocated %d interrupts\n", msgs);

 return (error);
}
