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
struct msk_if_softc {int msk_flags; int /*<<< orphan*/  msk_tick_ch; int /*<<< orphan*/  msk_softc; int /*<<< orphan*/  msk_if_dev; int /*<<< orphan*/  msk_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int MSK_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct msk_if_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct msk_if_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct msk_if_softc*) ; 

__attribute__((used)) static void
FUNC7(void *xsc_if)
{
	struct msk_if_softc *sc_if;
	struct mii_data *mii;

	sc_if = xsc_if;

	FUNC0(sc_if);

	mii = FUNC2(sc_if->msk_miibus);

	FUNC3(mii);
	if ((sc_if->msk_flags & MSK_FLAG_LINK) == 0)
		FUNC5(sc_if->msk_if_dev);
	FUNC4(sc_if->msk_softc);
	FUNC6(sc_if);
	FUNC1(&sc_if->msk_tick_ch, hz, msk_tick, sc_if);
}