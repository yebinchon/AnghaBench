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
struct ale_softc {int /*<<< orphan*/  ale_tick_ch; int /*<<< orphan*/  ale_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ale_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct ale_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct ale_softc *sc;
	struct mii_data *mii;

	sc = (struct ale_softc *)arg;

	FUNC0(sc);

	mii = FUNC5(sc->ale_miibus);
	FUNC6(mii);
	FUNC1(sc);
	/*
	 * Reclaim Tx buffers that have been transferred. It's not
	 * needed here but it would release allocated mbuf chains
	 * faster and limit the maximum delay to a hz.
	 */
	FUNC2(sc);
	FUNC3(sc);
	FUNC4(&sc->ale_tick_ch, hz, ale_tick, sc);
}