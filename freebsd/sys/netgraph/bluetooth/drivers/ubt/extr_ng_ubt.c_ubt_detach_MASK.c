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
struct ubt_softc {int /*<<< orphan*/  sc_ng_mtx; int /*<<< orphan*/  sc_if_mtx; int /*<<< orphan*/  sc_scoq; int /*<<< orphan*/  sc_aclq; int /*<<< orphan*/  sc_cmdq; int /*<<< orphan*/  sc_xfer; int /*<<< orphan*/  sc_task; int /*<<< orphan*/ * sc_node; } ;
typedef  int /*<<< orphan*/ * node_p ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ubt_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ubt_softc*) ; 
 int /*<<< orphan*/  UBT_N_TRANSFER ; 
 struct ubt_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC9(device_t dev)
{
	struct ubt_softc	*sc = FUNC4(dev);
	node_p			node = sc->sc_node;

	/* Destroy Netgraph node */
	if (node != NULL) {
		sc->sc_node = NULL;
		FUNC1(node);
		FUNC6(node);
	}

	/* Make sure ubt_task in gone */
	FUNC7(taskqueue_swi, &sc->sc_task);

	/* Free USB transfers, if any */
	FUNC8(sc->sc_xfer, UBT_N_TRANSFER);

	/* Destroy queues */
	FUNC2(sc);
	FUNC0(&sc->sc_cmdq);
	FUNC0(&sc->sc_aclq);
	FUNC0(&sc->sc_scoq);
	FUNC3(sc);

	FUNC5(&sc->sc_if_mtx);
	FUNC5(&sc->sc_ng_mtx);

	return (0);
}