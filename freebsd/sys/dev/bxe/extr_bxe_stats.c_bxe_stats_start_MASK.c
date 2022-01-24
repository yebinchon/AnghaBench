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
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {scalar_t__ func_stx; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    /*
     * VFs travel through here as part of the statistics FSM, but no action
     * is required
     */
    if (FUNC0(sc)) {
        return;
    }

    if (sc->port.pmf) {
        FUNC3(sc);
    }

    else if (sc->func_stx) {
        FUNC1(sc);
    }

    FUNC2(sc);
    FUNC4(sc);
}