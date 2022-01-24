#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  stats_mem; } ;
typedef  TYPE_1__* POCE_SOFTC ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int
FUNC12(POCE_SOFTC sc)
{
	int rc = 0, reset = 0;

	if( FUNC0(sc) ) {
		rc = FUNC8(sc, &sc->stats_mem);
		if (!rc)
			FUNC4(sc);
	}else if( FUNC1(sc) ) {
		rc = FUNC9(sc, &sc->stats_mem);
		if (!rc)
			FUNC5(sc);
	}else if( FUNC2(sc)) {
		rc = FUNC10(sc, &sc->stats_mem);
		if (!rc)
			FUNC6(sc);
	}else if( FUNC3(sc) ){
		rc = FUNC11(sc, &sc->stats_mem, reset);
		if (!rc)
			FUNC7(sc);
	}

	return rc;
}