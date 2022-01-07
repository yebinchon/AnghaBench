
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrsas_softc {int mrsas_dev; int * intr_handle; TYPE_1__* irq_context; int ** mrsas_irq; scalar_t__* irq_id; scalar_t__ msix_enable; } ;
struct TYPE_2__ {scalar_t__ MSIxIndex; struct mrsas_softc* sc; } ;


 int FAIL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 scalar_t__ SUCCESS ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,TYPE_1__*,int *) ;
 int device_printf (int ,char*) ;
 int mrsas_isr ;
 scalar_t__ mrsas_setup_msix (struct mrsas_softc*) ;

__attribute__((used)) static int
mrsas_setup_irq(struct mrsas_softc *sc)
{
 if (sc->msix_enable && (mrsas_setup_msix(sc) == SUCCESS))
  device_printf(sc->mrsas_dev, "MSI-x interrupts setup success\n");

 else {
  device_printf(sc->mrsas_dev, "Fall back to legacy interrupt\n");
  sc->irq_context[0].sc = sc;
  sc->irq_context[0].MSIxIndex = 0;
  sc->irq_id[0] = 0;
  sc->mrsas_irq[0] = bus_alloc_resource_any(sc->mrsas_dev,
      SYS_RES_IRQ, &sc->irq_id[0], RF_SHAREABLE | RF_ACTIVE);
  if (sc->mrsas_irq[0] == ((void*)0)) {
   device_printf(sc->mrsas_dev, "Cannot allocate legcay"
       "interrupt\n");
   return (FAIL);
  }
  if (bus_setup_intr(sc->mrsas_dev, sc->mrsas_irq[0],
      INTR_MPSAFE | INTR_TYPE_CAM, ((void*)0), mrsas_isr,
      &sc->irq_context[0], &sc->intr_handle[0])) {
   device_printf(sc->mrsas_dev, "Cannot set up legacy"
       "interrupt\n");
   return (FAIL);
  }
 }
 return (0);
}
