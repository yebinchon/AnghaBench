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
struct nfe_softc {int /*<<< orphan*/  nfe_stat_ch; int /*<<< orphan*/  nfe_miibus; int /*<<< orphan*/  nfe_ifp; } ;
struct mii_data {int dummy; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct nfe_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(void *xsc)
{
	struct nfe_softc *sc;
	struct mii_data *mii;
	if_t ifp;

	sc = (struct nfe_softc *)xsc;

	FUNC0(sc);

	ifp = sc->nfe_ifp;

	mii = FUNC2(sc->nfe_miibus);
	FUNC3(mii);
	FUNC4(sc);
	FUNC5(ifp);
	FUNC1(&sc->nfe_stat_ch, hz, nfe_tick, sc);
}