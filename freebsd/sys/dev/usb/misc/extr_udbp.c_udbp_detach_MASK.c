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
struct udbp_softc {int /*<<< orphan*/ * sc_bulk_in_buffer; int /*<<< orphan*/  sc_xmitq_hipri; int /*<<< orphan*/  sc_xmitq; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/ * sc_node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  UDBP_T_MAX ; 
 struct udbp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(device_t dev)
{
	struct udbp_softc *sc = FUNC2(dev);

	/* destroy Netgraph node */

	if (sc->sc_node != NULL) {
		FUNC1(sc->sc_node, NULL);
		FUNC5(sc->sc_node);
		sc->sc_node = NULL;
	}
	/* free USB transfers, if any */

	FUNC6(sc->sc_xfer, UDBP_T_MAX);

	FUNC4(&sc->sc_mtx);

	/* destroy queues */

	FUNC0(&sc->sc_xmitq);
	FUNC0(&sc->sc_xmitq_hipri);

	/* extra check */

	if (sc->sc_bulk_in_buffer) {
		FUNC3(sc->sc_bulk_in_buffer);
		sc->sc_bulk_in_buffer = NULL;
	}
	return (0);			/* success */
}