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
typedef  int uint32_t ;
struct ifnet {int dummy; } ;
struct are_softc {int sc_rxint_mask; int sc_txint_mask; struct ifnet* are_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct are_softc*) ; 
 int FUNC2 (struct are_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CSR_STATUS ; 
 int /*<<< orphan*/  FUNC3 (struct are_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct are_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct are_softc*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct are_softc		*sc = arg;
	uint32_t		status;
	struct ifnet		*ifp = sc->are_ifp;

	FUNC0(sc);

	/* mask out interrupts */

	status = FUNC2(sc, CSR_STATUS);
	if (status) {
		FUNC3(sc, CSR_STATUS, status);
	}
	if (status & sc->sc_rxint_mask) {
		FUNC4(sc);
	}
	if (status & sc->sc_txint_mask) {
		FUNC6(sc);
	}

	/* Try to get more packets going. */
	FUNC5(ifp);

	FUNC1(sc);
}