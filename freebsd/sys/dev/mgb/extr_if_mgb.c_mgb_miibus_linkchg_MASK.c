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
struct mii_data {int mii_media_status; } ;
struct mgb_softc {int link_state; int /*<<< orphan*/  baudrate; int /*<<< orphan*/  ctx; int /*<<< orphan*/  miibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int IFM_ACTIVE ; 
 int IFM_AVALID ; 
 int LINK_STATE_DOWN ; 
 int LINK_STATE_UNKNOWN ; 
 int LINK_STATE_UP ; 
 struct mii_data* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mgb_softc* FUNC1 (struct mii_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct mgb_softc *sc;
	struct mii_data *miid;
	int link_state;

	sc = FUNC1(FUNC0(dev));
	miid = FUNC0(sc->miibus);
	/* XXX: copied from miibus_linkchg **/
	if (miid->mii_media_status & IFM_AVALID) {
		if (miid->mii_media_status & IFM_ACTIVE)
			link_state = LINK_STATE_UP;
		else
			link_state = LINK_STATE_DOWN;
	} else
		link_state = LINK_STATE_UNKNOWN;
	sc->link_state = link_state;
	FUNC2(sc->ctx, sc->link_state, sc->baudrate);
}