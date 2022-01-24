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
struct alc_softc {int /*<<< orphan*/  alc_tick_ch; int /*<<< orphan*/  alc_miibus; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct alc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct alc_softc*) ; 
 struct mii_data* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC6 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	struct alc_softc *sc;
	struct mii_data *mii;

	sc = (struct alc_softc *)arg;

	FUNC0(sc);

	mii = FUNC5(sc->alc_miibus);
	FUNC6(mii);
	FUNC1(sc);
	/*
	 * alc(4) does not rely on Tx completion interrupts to reclaim
	 * transferred buffers. Instead Tx completion interrupts are
	 * used to hint for scheduling Tx task. So it's necessary to
	 * release transmitted buffers by kicking Tx completion
	 * handler. This limits the maximum reclamation delay to a hz.
	 */
	FUNC2(sc);
	FUNC3(sc);
	FUNC4(&sc->alc_tick_ch, hz, alc_tick, sc);
}