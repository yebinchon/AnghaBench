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
struct udbp_softc {int sc_flags; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; } ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int UDBP_FLAG_READ_STALL ; 
 int UDBP_FLAG_WRITE_STALL ; 
 size_t UDBP_T_RD ; 
 size_t UDBP_T_WR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(hook_p hook)
{
	struct udbp_softc *sc = FUNC3(FUNC1(hook));

	/* probably not at splnet, force outward queueing */
	FUNC0(FUNC2(hook));

	FUNC4(&sc->sc_mtx);

	sc->sc_flags |= (UDBP_FLAG_READ_STALL |
	    UDBP_FLAG_WRITE_STALL);

	/* start bulk-in transfer */
	FUNC6(sc->sc_xfer[UDBP_T_RD]);

	/* start bulk-out transfer */
	FUNC6(sc->sc_xfer[UDBP_T_WR]);

	FUNC5(&sc->sc_mtx);

	return (0);
}