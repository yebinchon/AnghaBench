#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct bxe_softc {int num_queues; struct bxe_fastpath* fp; } ;
struct TYPE_2__ {int /*<<< orphan*/  paddr; } ;
struct bxe_fastpath {TYPE_1__ rcq_dma; int /*<<< orphan*/  rx_sge_prod; int /*<<< orphan*/  rx_cq_prod; int /*<<< orphan*/  rx_bd_prod; scalar_t__ rx_bd_cons; } ;

/* Variables and functions */
 scalar_t__ BAR_USTRORM_INTMEM ; 
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*,struct bxe_fastpath*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    struct bxe_fastpath *fp;
    int i;

    for (i = 0; i < sc->num_queues; i++) {
        fp = &sc->fp[i];

        fp->rx_bd_cons = 0;

        /*
         * Activate the BD ring...
         * Warning, this will generate an interrupt (to the TSTORM)
         * so this can only be done after the chip is initialized
         */
        FUNC6(sc, fp,
                           fp->rx_bd_prod,
                           fp->rx_cq_prod,
                           fp->rx_sge_prod);

        if (i != 0) {
            continue;
        }

        if (FUNC0(sc)) {
            FUNC1(sc,
                   (BAR_USTRORM_INTMEM +
                    FUNC5(FUNC2(sc))),
                   FUNC4(fp->rcq_dma.paddr));
            FUNC1(sc,
                   (BAR_USTRORM_INTMEM +
                    FUNC5(FUNC2(sc)) + 4),
                   FUNC3(fp->rcq_dma.paddr));
        }
    }
}