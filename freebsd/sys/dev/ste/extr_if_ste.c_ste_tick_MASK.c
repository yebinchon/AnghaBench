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
struct ste_softc {int ste_flags; int /*<<< orphan*/  ste_callout; int /*<<< orphan*/  ste_dev; int /*<<< orphan*/  ste_miibus; } ;
struct mii_data {int dummy; } ;

/* Variables and functions */
 int STE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ste_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC7 (struct ste_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct ste_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct ste_softc *sc;
	struct mii_data *mii;

	sc = (struct ste_softc *)arg;

	FUNC0(sc);

	mii = FUNC2(sc->ste_miibus);
	FUNC3(mii);
	/*
	 * ukphy(4) does not seem to generate CB that reports
	 * resolved link state so if we know we lost a link,
	 * explicitly check the link state.
	 */
	if ((sc->ste_flags & STE_FLAG_LINK) == 0)
		FUNC4(sc->ste_dev);
	/*
	 * Because we are not generating Tx completion
	 * interrupt for every frame, reclaim transmitted
	 * buffers here.
	 */
	FUNC7(sc);
	FUNC6(sc);
	FUNC5(sc);
	FUNC8(sc);
	FUNC1(&sc->ste_callout, hz, ste_tick, sc);
}