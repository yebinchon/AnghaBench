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
struct nfe_softc {int /*<<< orphan*/  nfe_miibus; } ;
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;
typedef  int /*<<< orphan*/  if_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfe_softc*) ; 
 struct mii_data* FUNC2 (int /*<<< orphan*/ ) ; 
 struct nfe_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC5(if_t ifp, struct ifmediareq *ifmr)
{
	struct nfe_softc *sc;
	struct mii_data *mii;

	sc = FUNC3(ifp);

	FUNC0(sc);
	mii = FUNC2(sc->nfe_miibus);
	FUNC4(mii);

	ifmr->ifm_active = mii->mii_media_active;
	ifmr->ifm_status = mii->mii_media_status;
	FUNC1(sc);
}