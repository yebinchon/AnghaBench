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
struct mii_data {int dummy; } ;
struct arge_softc {int /*<<< orphan*/  arge_stat_callout; scalar_t__ arge_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct arge_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct arge_softc*) ; 
 struct mii_data* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(void *xsc)
{
	struct arge_softc	*sc = xsc;
	struct mii_data		*mii;

	FUNC0(sc);

	if (sc->arge_miibus) {
		mii = FUNC2(sc->arge_miibus);
		FUNC3(mii);
		FUNC1(&sc->arge_stat_callout, hz, arge_tick, sc);
	}
}