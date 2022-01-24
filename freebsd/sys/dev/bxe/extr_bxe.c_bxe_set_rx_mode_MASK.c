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
typedef  int /*<<< orphan*/  uint32_t ;
struct bxe_softc {scalar_t__ state; int /*<<< orphan*/  sp_state; int /*<<< orphan*/  rx_mode; int /*<<< orphan*/  ifp; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ BXE_MAX_MULTICAST ; 
 int /*<<< orphan*/  BXE_RX_MODE_ALLMULTI ; 
 int /*<<< orphan*/  BXE_RX_MODE_NORMAL ; 
 int /*<<< orphan*/  BXE_RX_MODE_PROMISC ; 
 scalar_t__ BXE_STATE_OPEN ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  DBG_SP ; 
 int /*<<< orphan*/  ECORE_FILTER_RX_MODE_PENDING ; 
 int /*<<< orphan*/  ECORE_FILTER_RX_MODE_SCHED ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 scalar_t__ FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*) ; 
 scalar_t__ FUNC6 (struct bxe_softc*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct bxe_softc *sc)
{
    if_t ifp = sc->ifp;
    uint32_t rx_mode = BXE_RX_MODE_NORMAL;

    if (sc->state != BXE_STATE_OPEN) {
        FUNC0(sc, DBG_SP, "state is %x, returning\n", sc->state);
        return;
    }

    FUNC0(sc, DBG_SP, "if_flags(ifp)=0x%x\n", FUNC9(sc->ifp));

    if (FUNC9(ifp) & IFF_PROMISC) {
        rx_mode = BXE_RX_MODE_PROMISC;
    } else if ((FUNC9(ifp) & IFF_ALLMULTI) ||
               ((FUNC8(ifp) > BXE_MAX_MULTICAST) &&
                FUNC1(sc))) {
        rx_mode = BXE_RX_MODE_ALLMULTI;
    } else {
        if (FUNC2(sc)) {
            /* some multicasts */
            if (FUNC4(sc) < 0) {
                rx_mode = BXE_RX_MODE_ALLMULTI;
            }
            if (FUNC6(sc) < 0) {
                rx_mode = BXE_RX_MODE_PROMISC;
            }
        }
    }

    sc->rx_mode = rx_mode;

    /* schedule the rx_mode command */
    if (FUNC7(ECORE_FILTER_RX_MODE_PENDING, &sc->sp_state)) {
        FUNC0(sc, DBG_LOAD, "Scheduled setting rx_mode with ECORE...\n");
        FUNC3(ECORE_FILTER_RX_MODE_SCHED, &sc->sp_state);
        return;
    }

    if (FUNC2(sc)) {
        FUNC5(sc);
    }
}