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
struct g_raid_volume {struct g_raid_softc* v_softc; struct g_raid_md_promise_pervolume* v_md_data; } ;
struct g_raid_softc {int dummy; } ;
struct g_raid_md_promise_pervolume {int /*<<< orphan*/  pv_started; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct g_raid_softc*,char*) ; 
 int /*<<< orphan*/  G_RAID_EVENT_VOLUME ; 
 int /*<<< orphan*/  G_RAID_VOLUME_E_STARTMD ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_volume*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void *arg)
{
	struct g_raid_volume *vol;
	struct g_raid_softc *sc;
	struct g_raid_md_promise_pervolume *pv;

	vol = arg;
	pv = vol->v_md_data;
	sc = vol->v_softc;
	if (!pv->pv_started) {
		FUNC0(0, sc, "Force volume start due to timeout.");
		FUNC1(vol, G_RAID_VOLUME_E_STARTMD,
		    G_RAID_EVENT_VOLUME);
	}
}