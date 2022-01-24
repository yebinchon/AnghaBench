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
struct jme_softc {int /*<<< orphan*/  jme_tick_ch; int /*<<< orphan*/  jme_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct jme_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct jme_softc*) ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct jme_softc *sc;
	struct mii_data *mii;

	sc = (struct jme_softc *)arg;

	FUNC0(sc);

	mii = FUNC2(sc->jme_miibus);
	FUNC6(mii);
	/*
	 * Reclaim Tx buffers that have been completed. It's not
	 * needed here but it would release allocated mbuf chains
	 * faster and limit the maximum delay to a hz.
	 */
	FUNC4(sc);
	FUNC3(sc);
	FUNC5(sc);
	FUNC1(&sc->jme_tick_ch, hz, jme_tick, sc);
}