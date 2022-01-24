#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * node_p ;
typedef  TYPE_1__* bt3c_softc_p ;
struct TYPE_3__ {int /*<<< orphan*/ * node; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  typestruct ; 

__attribute__((used)) static int
FUNC7(node_p node)
{
	bt3c_softc_p	sc = (bt3c_softc_p) FUNC0(node);

	/* Let old node go */
	FUNC1(node, NULL);
	FUNC2(node);

	/* Create new fresh one if we are not going down */
	if (sc == NULL)
		goto out;

	/* Create new Netgraph node */
	if (FUNC5(&typestruct, &sc->node) != 0) {
		FUNC4(sc->dev, "Could not create Netgraph node\n");
		sc->node = NULL;
		goto out;
	}

	/* Name new Netgraph node */
	if (FUNC6(sc->node,  FUNC3(sc->dev)) != 0) {
		FUNC4(sc->dev, "Could not name Netgraph node\n");
		FUNC2(sc->node);
		sc->node = NULL;
		goto out;
	}

	FUNC1(sc->node, sc);
out:
	return (0);
}