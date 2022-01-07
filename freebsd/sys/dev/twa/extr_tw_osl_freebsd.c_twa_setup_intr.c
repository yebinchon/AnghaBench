
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twa_softc {int intr_handle; scalar_t__ irq_res; int bus_dev; } ;


 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int bus_setup_intr (int ,scalar_t__,int,int *,int ,struct twa_softc*,int *) ;
 int twa_pci_intr ;

int twa_setup_intr(struct twa_softc *sc)
{
 int error = 0;

 if (!(sc->intr_handle) && (sc->irq_res)) {
  error = bus_setup_intr(sc->bus_dev, sc->irq_res,
     INTR_TYPE_CAM | INTR_MPSAFE,
     ((void*)0), twa_pci_intr,
     sc, &sc->intr_handle);
 }
 return( error );
}
