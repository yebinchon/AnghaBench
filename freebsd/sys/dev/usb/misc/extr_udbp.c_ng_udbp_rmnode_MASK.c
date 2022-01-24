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
struct udbp_softc {char* sc_name; int /*<<< orphan*/  sc_mtx; int /*<<< orphan*/ * sc_node; } ;
typedef  int /*<<< orphan*/ * node_p ;

/* Variables and functions */
 struct udbp_softc* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct udbp_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ng_udbp_typestruct ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	struct udbp_softc *sc = FUNC0(node);

	/* Let old node go */
	FUNC1(node, NULL);
	FUNC2(node);		/* forget it ever existed */

	if (sc == NULL) {
		goto done;
	}
	/* Create Netgraph node */
	if (FUNC4(&ng_udbp_typestruct, &sc->sc_node) != 0) {
		FUNC6("%s: Could not create Netgraph node\n",
		    sc->sc_name);
		sc->sc_node = NULL;
		goto done;
	}
	/* Name node */
	if (FUNC5(sc->sc_node, sc->sc_name) != 0) {
		FUNC6("%s: Could not name Netgraph node\n",
		    sc->sc_name);
		FUNC2(sc->sc_node);
		sc->sc_node = NULL;
		goto done;
	}
	FUNC1(sc->sc_node, sc);

done:
	if (sc) {
		FUNC3(&sc->sc_mtx);
	}
	return (0);
}