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
typedef  int uint8_t ;
struct TYPE_2__ {scalar_t__ pmf; } ;
struct bxe_softc {TYPE_1__ port; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct bxe_softc*) ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc *sc)
{
    uint8_t update = FALSE;

    FUNC4(sc);

    if (sc->port.pmf) {
        update = FUNC1(sc) == 0;
    }

    update |= FUNC5(sc) == 0;

    if (update) {
        FUNC2(sc);

        if (sc->port.pmf) {
            FUNC3(sc);
        }

        FUNC0(sc);
        FUNC4(sc);
    }
}