
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcie_cap_flags; } ;
struct bxe_softc {void* interrupt_mode; int num_queues; int intr_count; TYPE_2__* intr; int dev; TYPE_1__ devinfo; } ;
struct TYPE_4__ {int rid; int * resource; } ;


 int BLOGD (struct bxe_softc*,int ,char*,...) ;
 int BLOGE (struct bxe_softc*,char*,...) ;
 int BLOGI (struct bxe_softc*,char*,int,int) ;
 int BXE_MSIX_CAPABLE_FLAG ;
 int BXE_MSI_CAPABLE_FLAG ;
 int DBG_LOAD ;
 void* INTR_MODE_INTX ;
 void* INTR_MODE_MSI ;
 void* INTR_MODE_MSIX ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 int bus_release_resource (int ,int ,int,int *) ;
 int min (int,int) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;

__attribute__((used)) static int
bxe_interrupt_alloc(struct bxe_softc *sc)
{
    int msix_count = 0;
    int msi_count = 0;
    int num_requested = 0;
    int num_allocated = 0;
    int rid, i, j;
    int rc;


    if (sc->interrupt_mode > 0) {
        if (sc->devinfo.pcie_cap_flags & BXE_MSIX_CAPABLE_FLAG) {
            msix_count = pci_msix_count(sc->dev);
        }

        if (sc->devinfo.pcie_cap_flags & BXE_MSI_CAPABLE_FLAG) {
            msi_count = pci_msi_count(sc->dev);
        }

        BLOGD(sc, DBG_LOAD, "%d MSI and %d MSI-X vectors available\n",
              msi_count, msix_count);
    }

    do {
        if (sc->interrupt_mode != INTR_MODE_MSIX) {
            break;
        }

        if (((sc->devinfo.pcie_cap_flags & BXE_MSIX_CAPABLE_FLAG) == 0) ||
            (msix_count < 2)) {
            sc->interrupt_mode = INTR_MODE_MSI;
            break;
        }


        num_requested = min((sc->num_queues + 1), msix_count);

        BLOGD(sc, DBG_LOAD, "Requesting %d MSI-X vectors\n", num_requested);

        num_allocated = num_requested;
        if ((rc = pci_alloc_msix(sc->dev, &num_allocated)) != 0) {
            BLOGE(sc, "MSI-X alloc failed! (%d)\n", rc);
            sc->interrupt_mode = INTR_MODE_MSI;
            break;
        }

        if (num_allocated < 2) {
            BLOGE(sc, "MSI-X allocation less than 2!\n");
            sc->interrupt_mode = INTR_MODE_MSI;
            pci_release_msi(sc->dev);
            break;
        }

        BLOGI(sc, "MSI-X vectors Requested %d and Allocated %d\n",
              num_requested, num_allocated);


        sc->intr_count = num_allocated;
        sc->num_queues = num_allocated - 1;

        rid = 1;


        for (i = 0; i < num_allocated; i++) {
            sc->intr[i].rid = (rid + i);

            if ((sc->intr[i].resource =
                 bus_alloc_resource_any(sc->dev,
                                        SYS_RES_IRQ,
                                        &sc->intr[i].rid,
                                        RF_ACTIVE)) == ((void*)0)) {
                BLOGE(sc, "Failed to map MSI-X[%d] (rid=%d)!\n",
                      i, (rid + i));

                for (j = (i - 1); j >= 0; j--) {
                    bus_release_resource(sc->dev,
                                         SYS_RES_IRQ,
                                         sc->intr[j].rid,
                                         sc->intr[j].resource);
                }

                sc->intr_count = 0;
                sc->num_queues = 0;
                sc->interrupt_mode = INTR_MODE_MSI;
                pci_release_msi(sc->dev);
                break;
            }

            BLOGD(sc, DBG_LOAD, "Mapped MSI-X[%d] (rid=%d)\n", i, (rid + i));
        }
    } while (0);

    do {
        if (sc->interrupt_mode != INTR_MODE_MSI) {
            break;
        }

        if (((sc->devinfo.pcie_cap_flags & BXE_MSI_CAPABLE_FLAG) == 0) ||
            (msi_count < 1)) {
            sc->interrupt_mode = INTR_MODE_INTX;
            break;
        }


        num_requested = 1;

        BLOGD(sc, DBG_LOAD, "Requesting %d MSI vectors\n", num_requested);

        num_allocated = num_requested;
        if ((rc = pci_alloc_msi(sc->dev, &num_allocated)) != 0) {
            BLOGE(sc, "MSI alloc failed (%d)!\n", rc);
            sc->interrupt_mode = INTR_MODE_INTX;
            break;
        }

        if (num_allocated != 1) {
            BLOGE(sc, "MSI allocation is not 1!\n");
            sc->interrupt_mode = INTR_MODE_INTX;
            pci_release_msi(sc->dev);
            break;
        }

        BLOGI(sc, "MSI vectors Requested %d and Allocated %d\n",
              num_requested, num_allocated);


        sc->intr_count = num_allocated;
        sc->num_queues = num_allocated;

        rid = 1;

        sc->intr[0].rid = rid;

        if ((sc->intr[0].resource =
             bus_alloc_resource_any(sc->dev,
                                    SYS_RES_IRQ,
                                    &sc->intr[0].rid,
                                    RF_ACTIVE)) == ((void*)0)) {
            BLOGE(sc, "Failed to map MSI[0] (rid=%d)!\n", rid);
            sc->intr_count = 0;
            sc->num_queues = 0;
            sc->interrupt_mode = INTR_MODE_INTX;
            pci_release_msi(sc->dev);
            break;
        }

        BLOGD(sc, DBG_LOAD, "Mapped MSI[0] (rid=%d)\n", rid);
    } while (0);

    do {
        if (sc->interrupt_mode != INTR_MODE_INTX) {
            break;
        }

        BLOGD(sc, DBG_LOAD, "Requesting legacy INTx interrupt\n");


        sc->intr_count = 1;
        sc->num_queues = 1;

        rid = 0;

        sc->intr[0].rid = rid;

        if ((sc->intr[0].resource =
             bus_alloc_resource_any(sc->dev,
                                    SYS_RES_IRQ,
                                    &sc->intr[0].rid,
                                    (RF_ACTIVE | RF_SHAREABLE))) == ((void*)0)) {
            BLOGE(sc, "Failed to map INTx (rid=%d)!\n", rid);
            sc->intr_count = 0;
            sc->num_queues = 0;
            sc->interrupt_mode = -1;
            break;
        }

        BLOGD(sc, DBG_LOAD, "Mapped INTx (rid=%d)\n", rid);
    } while (0);

    if (sc->interrupt_mode == -1) {
        BLOGE(sc, "Interrupt Allocation: FAILED!!!\n");
        rc = 1;
    } else {
        BLOGD(sc, DBG_LOAD,
              "Interrupt Allocation: interrupt_mode=%d, num_queues=%d\n",
              sc->interrupt_mode, sc->num_queues);
        rc = 0;
    }

    return (rc);
}
