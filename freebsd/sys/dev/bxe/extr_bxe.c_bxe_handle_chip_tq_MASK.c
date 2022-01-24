#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bxe_softc {int /*<<< orphan*/  ifp; int /*<<< orphan*/  chip_tq_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
#define  CHIP_TQ_REINIT 128 
 int /*<<< orphan*/  DBG_LOAD ; 
 int IFF_DRV_RUNNING ; 
 long FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct bxe_softc*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(void *context,
                   int  pending)
{
    struct bxe_softc *sc = (struct bxe_softc *)context;
    long work = FUNC3(&sc->chip_tq_flags);

    switch (work)
    {

    case CHIP_TQ_REINIT:
        if (FUNC7(sc->ifp) & IFF_DRV_RUNNING) {
            /* restart the interface */
            FUNC0(sc, DBG_LOAD, "Restarting the interface...\n");
            FUNC5(sc);
            FUNC1(sc);
            FUNC6(sc);
            FUNC4(sc);
            FUNC2(sc);
        }
        break;

    default:
        break;
    }
}