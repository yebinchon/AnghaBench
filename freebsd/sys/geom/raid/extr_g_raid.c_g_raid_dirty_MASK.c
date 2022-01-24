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
struct g_raid_volume {int v_dirty; int /*<<< orphan*/  v_name; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {int /*<<< orphan*/  sc_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SX_XLOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_softc*,struct g_raid_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_raid_volume *vol)
{
	struct g_raid_softc *sc;

	sc = vol->v_softc;
	FUNC2();
	FUNC3(&sc->sc_lock, SX_XLOCKED);

//	if ((sc->sc_flags & G_RAID_DEVICE_FLAG_NOFAILSYNC) != 0)
//		return;
	vol->v_dirty = 1;
	FUNC0(1, sc, "Volume %s marked as dirty.",
	    vol->v_name);
	FUNC1(sc, vol, NULL, NULL);
}