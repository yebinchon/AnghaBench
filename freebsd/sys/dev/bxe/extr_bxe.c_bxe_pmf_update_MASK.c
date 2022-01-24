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
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ int_block; } ;
struct TYPE_4__ {int pmf; } ;
struct bxe_softc {TYPE_1__ devinfo; TYPE_2__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_INTR ; 
 scalar_t__ HC_REG_LEADING_EDGE_0 ; 
 scalar_t__ HC_REG_TRAILING_EDGE_0 ; 
 scalar_t__ IGU_REG_LEADING_EDGE_LATCH ; 
 scalar_t__ IGU_REG_TRAILING_EDGE_LATCH ; 
 scalar_t__ INT_BLOCK_HC ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int) ; 
 int FUNC3 (struct bxe_softc*) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  STATS_EVENT_PMF ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct bxe_softc *sc)
{
    int port = FUNC3(sc);
    uint32_t val;

    sc->port.pmf = 1;
    FUNC0(sc, DBG_INTR, "pmf %d\n", sc->port.pmf);

    /*
     * We need the mb() to ensure the ordering between the writing to
     * sc->port.pmf here and reading it from the bxe_periodic_task().
     */
    FUNC6();

    /* queue a periodic task */
    // XXX schedule task...

    // XXX bxe_dcbx_pmf_update(sc);

    /* enable nig attention */
    val = (0xff0f | (1 << (FUNC4(sc) + 4)));
    if (sc->devinfo.int_block == INT_BLOCK_HC) {
        FUNC2(sc, HC_REG_TRAILING_EDGE_0 + port*8, val);
        FUNC2(sc, HC_REG_LEADING_EDGE_0 + port*8, val);
    } else if (!FUNC1(sc)) {
        FUNC2(sc, IGU_REG_TRAILING_EDGE_LATCH, val);
        FUNC2(sc, IGU_REG_LEADING_EDGE_LATCH, val);
    }

    FUNC5(sc, STATS_EVENT_PMF);
}