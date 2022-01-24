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
typedef  size_t uint8_t ;
struct cfumass_softc {int /*<<< orphan*/ * sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cfumass_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cfumass_softc *sc, uint8_t xfer_index)
{

	FUNC3(sc->sc_xfer[xfer_index]);
	FUNC1(sc);
	FUNC2(sc->sc_xfer[xfer_index]);
	FUNC0(sc);
}