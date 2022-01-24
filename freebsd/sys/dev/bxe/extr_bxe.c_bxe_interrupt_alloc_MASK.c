#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pcie_cap_flags; } ;
struct bxe_softc {void* interrupt_mode; int num_queues; int intr_count; TYPE_2__* intr; int /*<<< orphan*/  dev; TYPE_1__ devinfo; } ;
struct TYPE_4__ {int rid; int /*<<< orphan*/ * resource; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,char*,int,int) ; 
 int BXE_MSIX_CAPABLE_FLAG ; 
 int BXE_MSI_CAPABLE_FLAG ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 void* INTR_MODE_INTX ; 
 void* INTR_MODE_MSI ; 
 void* INTR_MODE_MSIX ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(struct bxe_softc *sc)
{
    int msix_count = 0;
    int msi_count = 0;
    int num_requested = 0;
    int num_allocated = 0;
    int rid, i, j;
    int rc;

    /* get the number of available MSI/MSI-X interrupts from the OS */
    if (sc->interrupt_mode > 0) {
        if (sc->devinfo.pcie_cap_flags & BXE_MSIX_CAPABLE_FLAG) {
            msix_count = FUNC9(sc->dev);
        }

        if (sc->devinfo.pcie_cap_flags & BXE_MSI_CAPABLE_FLAG) {
            msi_count = FUNC8(sc->dev);
        }

        FUNC0(sc, DBG_LOAD, "%d MSI and %d MSI-X vectors available\n",
              msi_count, msix_count);
    }

    do { /* try allocating MSI-X interrupt resources (at least 2) */
        if (sc->interrupt_mode != INTR_MODE_MSIX) {
            break;
        }

        if (((sc->devinfo.pcie_cap_flags & BXE_MSIX_CAPABLE_FLAG) == 0) ||
            (msix_count < 2)) {
            sc->interrupt_mode = INTR_MODE_MSI; /* try MSI next */
            break;
        }

        /* ask for the necessary number of MSI-X vectors */
        num_requested = FUNC5((sc->num_queues + 1), msix_count);

        FUNC0(sc, DBG_LOAD, "Requesting %d MSI-X vectors\n", num_requested);

        num_allocated = num_requested;
        if ((rc = FUNC7(sc->dev, &num_allocated)) != 0) {
            FUNC1(sc, "MSI-X alloc failed! (%d)\n", rc);
            sc->interrupt_mode = INTR_MODE_MSI; /* try MSI next */
            break;
        }

        if (num_allocated < 2) { /* possible? */
            FUNC1(sc, "MSI-X allocation less than 2!\n");
            sc->interrupt_mode = INTR_MODE_MSI; /* try MSI next */
            FUNC10(sc->dev);
            break;
        }

        FUNC2(sc, "MSI-X vectors Requested %d and Allocated %d\n",
              num_requested, num_allocated);

        /* best effort so use the number of vectors allocated to us */
        sc->intr_count = num_allocated;
        sc->num_queues = num_allocated - 1;

        rid = 1; /* initial resource identifier */

        /* allocate the MSI-X vectors */
        for (i = 0; i < num_allocated; i++) {
            sc->intr[i].rid = (rid + i);

            if ((sc->intr[i].resource =
                 FUNC3(sc->dev,
                                        SYS_RES_IRQ,
                                        &sc->intr[i].rid,
                                        RF_ACTIVE)) == NULL) {
                FUNC1(sc, "Failed to map MSI-X[%d] (rid=%d)!\n",
                      i, (rid + i));

                for (j = (i - 1); j >= 0; j--) {
                    FUNC4(sc->dev,
                                         SYS_RES_IRQ,
                                         sc->intr[j].rid,
                                         sc->intr[j].resource);
                }

                sc->intr_count = 0;
                sc->num_queues = 0;
                sc->interrupt_mode = INTR_MODE_MSI; /* try MSI next */
                FUNC10(sc->dev);
                break;
            }

            FUNC0(sc, DBG_LOAD, "Mapped MSI-X[%d] (rid=%d)\n", i, (rid + i));
        }
    } while (0);

    do { /* try allocating MSI vector resources (at least 2) */
        if (sc->interrupt_mode != INTR_MODE_MSI) {
            break;
        }

        if (((sc->devinfo.pcie_cap_flags & BXE_MSI_CAPABLE_FLAG) == 0) ||
            (msi_count < 1)) {
            sc->interrupt_mode = INTR_MODE_INTX; /* try INTx next */
            break;
        }

        /* ask for a single MSI vector */
        num_requested = 1;

        FUNC0(sc, DBG_LOAD, "Requesting %d MSI vectors\n", num_requested);

        num_allocated = num_requested;
        if ((rc = FUNC6(sc->dev, &num_allocated)) != 0) {
            FUNC1(sc, "MSI alloc failed (%d)!\n", rc);
            sc->interrupt_mode = INTR_MODE_INTX; /* try INTx next */
            break;
        }

        if (num_allocated != 1) { /* possible? */
            FUNC1(sc, "MSI allocation is not 1!\n");
            sc->interrupt_mode = INTR_MODE_INTX; /* try INTx next */
            FUNC10(sc->dev);
            break;
        }

        FUNC2(sc, "MSI vectors Requested %d and Allocated %d\n",
              num_requested, num_allocated);

        /* best effort so use the number of vectors allocated to us */
        sc->intr_count = num_allocated;
        sc->num_queues = num_allocated;

        rid = 1; /* initial resource identifier */

        sc->intr[0].rid = rid;

        if ((sc->intr[0].resource =
             FUNC3(sc->dev,
                                    SYS_RES_IRQ,
                                    &sc->intr[0].rid,
                                    RF_ACTIVE)) == NULL) {
            FUNC1(sc, "Failed to map MSI[0] (rid=%d)!\n", rid);
            sc->intr_count = 0;
            sc->num_queues = 0;
            sc->interrupt_mode = INTR_MODE_INTX; /* try INTx next */
            FUNC10(sc->dev);
            break;
        }

        FUNC0(sc, DBG_LOAD, "Mapped MSI[0] (rid=%d)\n", rid);
    } while (0);

    do { /* try allocating INTx vector resources */
        if (sc->interrupt_mode != INTR_MODE_INTX) {
            break;
        }

        FUNC0(sc, DBG_LOAD, "Requesting legacy INTx interrupt\n");

        /* only one vector for INTx */
        sc->intr_count = 1;
        sc->num_queues = 1;

        rid = 0; /* initial resource identifier */

        sc->intr[0].rid = rid;

        if ((sc->intr[0].resource =
             FUNC3(sc->dev,
                                    SYS_RES_IRQ,
                                    &sc->intr[0].rid,
                                    (RF_ACTIVE | RF_SHAREABLE))) == NULL) {
            FUNC1(sc, "Failed to map INTx (rid=%d)!\n", rid);
            sc->intr_count = 0;
            sc->num_queues = 0;
            sc->interrupt_mode = -1; /* Failed! */
            break;
        }

        FUNC0(sc, DBG_LOAD, "Mapped INTx (rid=%d)\n", rid);
    } while (0);

    if (sc->interrupt_mode == -1) {
        FUNC1(sc, "Interrupt Allocation: FAILED!!!\n");
        rc = 1;
    } else {
        FUNC0(sc, DBG_LOAD,
              "Interrupt Allocation: interrupt_mode=%d, num_queues=%d\n",
              sc->interrupt_mode, sc->num_queues);
        rc = 0;
    }

    return (rc);
}