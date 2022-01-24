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
struct otus_softc {int /*<<< orphan*/  sc_xfer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct otus_softc*) ; 
 int /*<<< orphan*/  OTUS_N_XFER ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC6(struct otus_softc *sc)
{

	FUNC0(sc);
	FUNC3(sc);
	FUNC4(sc);
	FUNC2(sc);
	FUNC1(sc);

	FUNC5(sc->sc_xfer, OTUS_N_XFER);
}