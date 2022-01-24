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
typedef  int u_int ;
struct g_raid_volume {scalar_t__ v_provider_open; scalar_t__ v_stopping; int /*<<< orphan*/ * v_rootmount; scalar_t__ v_starting; int /*<<< orphan*/  v_tr; int /*<<< orphan*/ * v_provider; int /*<<< orphan*/  v_name; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_md; int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct g_raid_volume*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
#define  G_RAID_VOLUME_E_DOWN 130 
#define  G_RAID_VOLUME_E_START 129 
#define  G_RAID_VOLUME_E_UP 128 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC5 (struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct g_raid_volume *vol, u_int event)
{
	struct g_raid_softc *sc;

	sc = vol->v_softc;
	FUNC8(&sc->sc_lock, SX_XLOCKED);

	FUNC0(2, sc, "Event %s for volume %s.",
	    FUNC6(event),
	    vol->v_name);
	switch (event) {
	case G_RAID_VOLUME_E_DOWN:
		if (vol->v_provider != NULL)
			FUNC3(vol);
		break;
	case G_RAID_VOLUME_E_UP:
		if (vol->v_provider == NULL)
			FUNC5(vol);
		break;
	case G_RAID_VOLUME_E_START:
		if (vol->v_tr)
			FUNC2(vol->v_tr);
		return (0);
	default:
		if (sc->sc_md)
			FUNC1(sc->sc_md, vol, event);
		return (0);
	}

	/* Manage root mount release. */
	if (vol->v_starting) {
		vol->v_starting = 0;
		FUNC0(1, sc, "root_mount_rel %p", vol->v_rootmount);
		FUNC7(vol->v_rootmount);
		vol->v_rootmount = NULL;
	}
	if (vol->v_stopping && vol->v_provider_open == 0)
		FUNC4(vol);
	return (0);
}