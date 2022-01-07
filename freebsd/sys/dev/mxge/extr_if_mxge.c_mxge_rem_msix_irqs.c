
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_slices; int dev; int * msix_table_res; int ** msix_irq_res; int ** msix_ih; } ;
typedef TYPE_1__ mxge_softc_t ;


 int M_DEVBUF ;
 int PCIR_BAR (int) ;
 int SYS_RES_IRQ ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int,int *) ;
 int bus_teardown_intr (int ,int *,int *) ;
 int free (int **,int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
mxge_rem_msix_irqs(mxge_softc_t *sc)
{
 int i, rid;

 for (i = 0; i < sc->num_slices; i++) {
  if (sc->msix_ih[i] != ((void*)0)) {
   bus_teardown_intr(sc->dev, sc->msix_irq_res[i],
       sc->msix_ih[i]);
   sc->msix_ih[i] = ((void*)0);
  }
 }
 free(sc->msix_ih, M_DEVBUF);

 for (i = 0; i < sc->num_slices; i++) {
  rid = i + 1;
  if (sc->msix_irq_res[i] != ((void*)0))
   bus_release_resource(sc->dev, SYS_RES_IRQ, rid,
          sc->msix_irq_res[i]);
  sc->msix_irq_res[i] = ((void*)0);
 }
 free(sc->msix_irq_res, M_DEVBUF);

 bus_release_resource(sc->dev, SYS_RES_MEMORY, PCIR_BAR(2),
        sc->msix_table_res);

 pci_release_msi(sc->dev);
 return;
}
