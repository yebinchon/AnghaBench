
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int intr_count; int flags; int dev; TYPE_1__* intrs; } ;
struct TYPE_4__ {int * intr_res; int * tag; int irq_rr; int * tq; } ;
typedef TYPE_2__* POCE_SOFTC ;


 int OCE_FLAGS_USING_MSIX ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int pci_release_msi (int ) ;
 int taskqueue_free (int *) ;

void
oce_intr_free(POCE_SOFTC sc)
{
 int i = 0;

 for (i = 0; i < sc->intr_count; i++) {

  if (sc->intrs[i].tag != ((void*)0))
   bus_teardown_intr(sc->dev, sc->intrs[i].intr_res,
      sc->intrs[i].tag);
  if (sc->intrs[i].tq != ((void*)0))
   taskqueue_free(sc->intrs[i].tq);

  if (sc->intrs[i].intr_res != ((void*)0))
   bus_release_resource(sc->dev, SYS_RES_IRQ,
      sc->intrs[i].irq_rr,
      sc->intrs[i].intr_res);
  sc->intrs[i].tag = ((void*)0);
  sc->intrs[i].intr_res = ((void*)0);
 }

 if (sc->flags & OCE_FLAGS_USING_MSIX)
  pci_release_msi(sc->dev);

}
