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
struct mii_data {int mii_media_status; int /*<<< orphan*/  mii_media_active; } ;
struct fxp_softc {int flags; int cu_resume_bug; scalar_t__ revision; void* ifp; int /*<<< orphan*/  miibus; } ;
typedef  void* if_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FXP_FLAG_CU_RESUME_BUG ; 
 scalar_t__ FXP_REV_82557 ; 
 int IFF_DRV_RUNNING ; 
 scalar_t__ IFM_10_T ; 
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fxp_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct fxp_softc *sc;
	struct mii_data *mii;
	if_t ifp;

	sc = FUNC1(dev);
	mii = FUNC1(sc->miibus);
	ifp = sc->ifp;
	if (mii == NULL || ifp == (void *)NULL ||
	    (FUNC3(ifp) & IFF_DRV_RUNNING) == 0 ||
	    (mii->mii_media_status & (IFM_AVALID | IFM_ACTIVE)) !=
	    (IFM_AVALID | IFM_ACTIVE))
		return;

	if (FUNC0(mii->mii_media_active) == IFM_10_T &&
	    sc->flags & FXP_FLAG_CU_RESUME_BUG)
		sc->cu_resume_bug = 1;
	else
		sc->cu_resume_bug = 0;
	/*
	 * Call fxp_init_body in order to adjust the flow control settings.
	 * Note that the 82557 doesn't support hardware flow control.
	 */
	if (sc->revision == FXP_REV_82557)
		return;
	FUNC4(ifp, 0, IFF_DRV_RUNNING);
	FUNC2(sc, 0);
}