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
struct udbp_softc {int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_xfer; int /*<<< orphan*/ * sc_hook; int /*<<< orphan*/  sc_packets_in; struct mbuf* sc_bulk_in_buffer; } ;
struct mbuf {int dummy; } ;
typedef  int /*<<< orphan*/  node_p ;
typedef  int /*<<< orphan*/  hook_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct udbp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,struct mbuf*) ; 
 size_t UDBP_T_RD ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(node_p node, hook_p hook, void *arg1, int arg2)
{
	struct udbp_softc *sc = FUNC2(node);
	struct mbuf *m;
	int error;

	if (sc == NULL) {
		return;
	}
	FUNC5(&sc->sc_mtx);

	m = sc->sc_bulk_in_buffer;

	if (m) {

		sc->sc_bulk_in_buffer = NULL;

		if ((sc->sc_hook == NULL) ||
		    FUNC1(sc->sc_hook)) {
			FUNC0("No upstream hook\n");
			goto done;
		}
		sc->sc_packets_in++;

		FUNC3(error, sc->sc_hook, m);

		m = NULL;
	}
done:
	if (m) {
		FUNC4(m);
	}
	/* start USB bulk-in transfer, if not already started */

	FUNC7(sc->sc_xfer[UDBP_T_RD]);

	FUNC6(&sc->sc_mtx);
}