
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfxge_intr {scalar_t__ state; int status; } ;
struct sfxge_softc {struct sfxge_intr intr; int dev; } ;
typedef int efsys_mem_t ;
typedef int device_t ;


 int EFX_INTR_SIZE ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 scalar_t__ SFXGE_INTR_INITIALIZED ;
 scalar_t__ SFXGE_INTR_UNINITIALIZED ;
 int device_printf (int ,char*) ;
 int sfxge_dma_alloc (struct sfxge_softc*,int ,int *) ;
 int sfxge_intr_setup_fixed (struct sfxge_softc*) ;
 int sfxge_intr_setup_msi (struct sfxge_softc*) ;
 int sfxge_intr_setup_msix (struct sfxge_softc*) ;

int
sfxge_intr_init(struct sfxge_softc *sc)
{
 device_t dev;
 struct sfxge_intr *intr;
 efsys_mem_t *esmp;
 int rc;

 dev = sc->dev;
 intr = &sc->intr;
 esmp = &intr->status;

 KASSERT(intr->state == SFXGE_INTR_UNINITIALIZED,
     ("Interrupts already initialized"));


 if ((rc = sfxge_intr_setup_msix(sc)) == 0)
  device_printf(dev, "Using MSI-X interrupts\n");
 else if ((rc = sfxge_intr_setup_msi(sc)) == 0)
  device_printf(dev, "Using MSI interrupts\n");
 else if ((rc = sfxge_intr_setup_fixed(sc)) == 0) {
  device_printf(dev, "Using fixed interrupts\n");
 } else {
  device_printf(dev, "Couldn't setup interrupts\n");
  return (ENOMEM);
 }


 if ((rc = sfxge_dma_alloc(sc, EFX_INTR_SIZE, esmp)) != 0)
  return (ENOMEM);

 intr->state = SFXGE_INTR_INITIALIZED;

 return (0);
}
