
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bxe_softc {int interrupt_mode; int intr_count; int dev; TYPE_1__* intr; } ;
struct TYPE_2__ {int * resource; int rid; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int DBG_LOAD ;



 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,int *) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static void
bxe_interrupt_free(struct bxe_softc *sc)
{
    int i;

    switch (sc->interrupt_mode) {
    case 130:
        BLOGD(sc, DBG_LOAD, "Releasing legacy INTx vector\n");
        if (sc->intr[0].resource != ((void*)0)) {
            bus_release_resource(sc->dev,
                                 SYS_RES_IRQ,
                                 sc->intr[0].rid,
                                 sc->intr[0].resource);
        }
        break;
    case 129:
        for (i = 0; i < sc->intr_count; i++) {
            BLOGD(sc, DBG_LOAD, "Releasing MSI vector %d\n", i);
            if (sc->intr[i].resource && sc->intr[i].rid) {
                bus_release_resource(sc->dev,
                                     SYS_RES_IRQ,
                                     sc->intr[i].rid,
                                     sc->intr[i].resource);
            }
        }
        pci_release_msi(sc->dev);
        break;
    case 128:
        for (i = 0; i < sc->intr_count; i++) {
            BLOGD(sc, DBG_LOAD, "Releasing MSI-X vector %d\n", i);
            if (sc->intr[i].resource && sc->intr[i].rid) {
                bus_release_resource(sc->dev,
                                     SYS_RES_IRQ,
                                     sc->intr[i].rid,
                                     sc->intr[i].resource);
            }
        }
        pci_release_msi(sc->dev);
        break;
    default:

        break;
    }
}
