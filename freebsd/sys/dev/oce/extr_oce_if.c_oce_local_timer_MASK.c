#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int nwqs; int /*<<< orphan*/  timer; int /*<<< orphan*/ * wq; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),TYPE_1__*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	POCE_SOFTC sc = arg;
	int i = 0;
	
	FUNC3(sc);
	FUNC6(sc);
	FUNC7(sc);
	FUNC5(sc);
	
	/* TX Watch Dog*/
	for (i = 0; i < sc->nwqs; i++)
		FUNC8(sc, sc->wq[i]);
	
	/* calculate and set the eq delay for optimal interrupt rate */
	if (FUNC0(sc) || FUNC1(sc))
		FUNC4(sc);

	FUNC2(&sc->timer, hz, oce_local_timer, sc);
}