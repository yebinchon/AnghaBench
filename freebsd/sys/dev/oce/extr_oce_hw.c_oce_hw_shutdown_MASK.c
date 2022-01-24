#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  bsmbx; int /*<<< orphan*/  dev_lock; int /*<<< orphan*/  bmbx_lock; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void
FUNC10(POCE_SOFTC sc)
{

	FUNC9(sc);
	/* disable hardware interrupts */
	FUNC5(sc);
#if defined(INET6) || defined(INET)
	/* Free LRO resources */
	oce_free_lro(sc);
#endif
	/* Release queue*/
	FUNC8(sc);
	/*Delete Network Interface*/
	FUNC1(sc);
	/* After fw clean we dont send any cmds to fw.*/
	FUNC4(sc);
	/* release intr resources */
	FUNC7(sc);
	/* release PCI resources */
	FUNC6(sc);
	/* free mbox specific resources */
	FUNC0(&sc->bmbx_lock);
	FUNC0(&sc->dev_lock);

	FUNC2(sc, &sc->bsmbx);
}