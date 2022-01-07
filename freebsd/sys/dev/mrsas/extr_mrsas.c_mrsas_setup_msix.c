
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrsas_softc {int msix_vectors; int* irq_id; int mrsas_dev; int * intr_handle; TYPE_1__* irq_context; int ** mrsas_irq; } ;
struct TYPE_2__ {int MSIxIndex; struct mrsas_softc* sc; } ;


 int FAIL ;
 int INTR_MPSAFE ;
 int INTR_TYPE_CAM ;
 int RF_ACTIVE ;
 int SUCCESS ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_setup_intr (int ,int *,int,int *,int ,TYPE_1__*,int *) ;
 int device_printf (int ,char*) ;
 int mrsas_isr ;
 int mrsas_teardown_intr (struct mrsas_softc*) ;

__attribute__((used)) static int
mrsas_setup_msix(struct mrsas_softc *sc)
{
 int i;

 for (i = 0; i < sc->msix_vectors; i++) {
  sc->irq_context[i].sc = sc;
  sc->irq_context[i].MSIxIndex = i;
  sc->irq_id[i] = i + 1;
  sc->mrsas_irq[i] = bus_alloc_resource_any
      (sc->mrsas_dev, SYS_RES_IRQ, &sc->irq_id[i]
      ,RF_ACTIVE);
  if (sc->mrsas_irq[i] == ((void*)0)) {
   device_printf(sc->mrsas_dev, "Can't allocate MSI-x\n");
   goto irq_alloc_failed;
  }
  if (bus_setup_intr(sc->mrsas_dev,
      sc->mrsas_irq[i],
      INTR_MPSAFE | INTR_TYPE_CAM,
      ((void*)0), mrsas_isr, &sc->irq_context[i],
      &sc->intr_handle[i])) {
   device_printf(sc->mrsas_dev,
       "Cannot set up MSI-x interrupt handler\n");
   goto irq_alloc_failed;
  }
 }
 return SUCCESS;

irq_alloc_failed:
 mrsas_teardown_intr(sc);
 return (FAIL);
}
