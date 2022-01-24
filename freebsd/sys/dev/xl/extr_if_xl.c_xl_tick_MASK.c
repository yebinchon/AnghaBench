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
struct xl_softc {int /*<<< orphan*/  xl_tick_callout; int /*<<< orphan*/ * xl_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 scalar_t__ EJUSTRETURN ; 
 int /*<<< orphan*/  FUNC0 (struct xl_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct xl_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct xl_softc*) ; 
 scalar_t__ FUNC5 (struct xl_softc*) ; 

__attribute__((used)) static void
FUNC6(void *xsc)
{
	struct xl_softc *sc = xsc;
	struct mii_data *mii;

	FUNC0(sc);

	if (sc->xl_miibus != NULL) {
		mii = FUNC2(sc->xl_miibus);
		FUNC3(mii);
	}

	FUNC4(sc);
	if (FUNC5(sc) == EJUSTRETURN)
		return;

	FUNC1(&sc->xl_tick_callout, hz, xl_tick, sc);
}