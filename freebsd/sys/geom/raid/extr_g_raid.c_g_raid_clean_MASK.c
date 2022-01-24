#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct g_raid_volume {scalar_t__ v_writes; int v_last_write; int /*<<< orphan*/  v_name; scalar_t__ v_dirty; TYPE_1__* v_provider; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; } ;
struct TYPE_2__ {scalar_t__ acw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int g_raid_clean_time ; 
 int /*<<< orphan*/  g_raid_shutdown ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_softc*,struct g_raid_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int time_uptime ; 

__attribute__((used)) static void
FUNC4(struct g_raid_volume *vol, int acw)
{
	struct g_raid_softc *sc;
	int timeout;

	sc = vol->v_softc;
	FUNC2();
	FUNC3(&sc->sc_lock, SX_XLOCKED);

//	if ((sc->sc_flags & G_RAID_DEVICE_FLAG_NOFAILSYNC) != 0)
//		return;
	if (!vol->v_dirty)
		return;
	if (vol->v_writes > 0)
		return;
	if (acw > 0 || (acw == -1 &&
	    vol->v_provider != NULL && vol->v_provider->acw > 0)) {
		timeout = g_raid_clean_time - (time_uptime - vol->v_last_write);
		if (!g_raid_shutdown && timeout > 0)
			return;
	}
	vol->v_dirty = 0;
	FUNC0(1, sc, "Volume %s marked as clean.",
	    vol->v_name);
	FUNC1(sc, vol, NULL, NULL);
}