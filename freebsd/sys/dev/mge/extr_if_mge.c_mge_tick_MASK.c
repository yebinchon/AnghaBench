#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mge_softc {int phy_attached; scalar_t__ mge_media_status; int /*<<< orphan*/  wd_callout; int /*<<< orphan*/  ifp; TYPE_2__* mii; } ;
struct TYPE_3__ {scalar_t__ ifm_media; } ;
struct TYPE_4__ {TYPE_1__ mii_media; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void (*) (void*),struct mge_softc*) ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mge_softc*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC7(void *msc)
{
	struct mge_softc *sc = msc;

	FUNC0(sc->phy_attached == 1, ("mge_tick while PHY not attached"));

	FUNC1(sc);

	/* Check for TX timeout */
	FUNC5(sc);

	FUNC6(sc->mii);

	/* Check for media type change */
	if(sc->mge_media_status != sc->mii->mii_media.ifm_media)
		FUNC4(sc->ifp);

	FUNC2(sc);

	/* Schedule another timeout one second from now */
	FUNC3(&sc->wd_callout, hz, mge_tick, sc);

	return;
}