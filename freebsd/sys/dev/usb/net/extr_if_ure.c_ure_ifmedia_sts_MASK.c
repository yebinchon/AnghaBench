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
struct ure_softc {int dummy; } ;
struct mii_data {int /*<<< orphan*/  mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct ifnet {struct ure_softc* if_softc; } ;
struct ifmediareq {int /*<<< orphan*/  ifm_status; int /*<<< orphan*/  ifm_active; } ;

/* Variables and functions */
 struct mii_data* FUNC0 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ure_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_data*) ; 

__attribute__((used)) static void
FUNC4(struct ifnet *ifp, struct ifmediareq *ifmr)
{
	struct ure_softc *sc;
	struct mii_data *mii;

	sc = ifp->if_softc;
	mii = FUNC0(sc);

	FUNC1(sc);
	FUNC3(mii);
	ifmr->ifm_active = mii->mii_media_active;
	ifmr->ifm_status = mii->mii_media_status;
	FUNC2(sc);
}