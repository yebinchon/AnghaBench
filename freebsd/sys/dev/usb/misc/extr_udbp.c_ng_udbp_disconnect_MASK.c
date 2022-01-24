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
struct udbp_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_hook; int /*<<< orphan*/ * sc_bulk_in_buffer; int /*<<< orphan*/  sc_xmitq_hipri; int /*<<< orphan*/  sc_xmitq; int /*<<< orphan*/ * sc_xfer; } ;
typedef  int /*<<< orphan*/ * hook_p ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct udbp_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 size_t UDBP_T_RD ; 
 size_t UDBP_T_RD_CS ; 
 size_t UDBP_T_WR ; 
 size_t UDBP_T_WR_CS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(hook_p hook)
{
	struct udbp_softc *sc = FUNC4(FUNC1(hook));
	int error = 0;

	if (sc != NULL) {

		FUNC6(&sc->sc_mtx);

		if (hook != sc->sc_hook) {
			error = EINVAL;
		} else {

			/* stop bulk-in transfer */
			FUNC9(sc->sc_xfer[UDBP_T_RD_CS]);
			FUNC9(sc->sc_xfer[UDBP_T_RD]);

			/* stop bulk-out transfer */
			FUNC9(sc->sc_xfer[UDBP_T_WR_CS]);
			FUNC9(sc->sc_xfer[UDBP_T_WR]);

			/* cleanup queues */
			FUNC0(&sc->sc_xmitq);
			FUNC0(&sc->sc_xmitq_hipri);

			if (sc->sc_bulk_in_buffer) {
				FUNC5(sc->sc_bulk_in_buffer);
				sc->sc_bulk_in_buffer = NULL;
			}
			sc->sc_hook = NULL;
		}

		FUNC7(&sc->sc_mtx);
	}
	if ((FUNC3(FUNC1(hook)) == 0)
	    && (FUNC2(FUNC1(hook))))
		FUNC8(FUNC1(hook));

	return (error);
}