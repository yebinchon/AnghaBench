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
struct sge_softc {int sge_flags; int /*<<< orphan*/  sge_stat_ch; int /*<<< orphan*/  sge_dev; int /*<<< orphan*/  sge_miibus; struct ifnet* sge_ifp; } ;
struct mii_data {int dummy; } ;
struct ifnet {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SGE_FLAG_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct sge_softc*) ; 
 struct mii_data* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct sge_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct sge_softc*) ; 

__attribute__((used)) static void
FUNC9(void *arg)
{
	struct sge_softc *sc;
	struct mii_data *mii;
	struct ifnet *ifp;

	sc = arg;
	FUNC1(sc);

	ifp = sc->sge_ifp;
	mii = FUNC3(sc->sge_miibus);
	FUNC4(mii);
	if ((sc->sge_flags & SGE_FLAG_LINK) == 0) {
		FUNC5(sc->sge_dev);
		if ((sc->sge_flags & SGE_FLAG_LINK) != 0 &&
		    !FUNC0(&ifp->if_snd))
			FUNC6(ifp);
	}
	/*
	 * Reclaim transmitted frames here as we do not request
	 * Tx completion interrupt for every queued frames to
	 * reduce excessive interrupts.
	 */
	FUNC7(sc);
	FUNC8(sc);
	FUNC2(&sc->sge_stat_ch, hz, sge_tick, sc);
}