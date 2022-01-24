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
typedef  scalar_t__ u_int ;
struct g_raid_volume {int v_disks_count; scalar_t__ v_state; scalar_t__ v_tr; struct g_raid_softc* v_softc; } ;
struct g_raid_tr_raid1e_object {int trso_flags; scalar_t__ trso_stopping; scalar_t__ trso_starting; } ;
struct g_raid_subdisk {int dummy; } ;
struct g_raid_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  G_RAID_EVENT_VOLUME ; 
 int /*<<< orphan*/  G_RAID_VOLUME_E_DOWN ; 
 int /*<<< orphan*/  G_RAID_VOLUME_E_UP ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ G_RAID_VOLUME_S_STARTING ; 
 scalar_t__ G_RAID_VOLUME_S_STOPPED ; 
 int N ; 
 int TR_RAID1E_F_DOING_SOME ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_volume*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_volume*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,struct g_raid_subdisk*) ; 
 scalar_t__ FUNC4 (struct g_raid_volume*) ; 
 scalar_t__ FUNC5 (struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid_softc*,struct g_raid_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct g_raid_volume *vol,
    struct g_raid_subdisk *sd)
{
	struct g_raid_tr_raid1e_object *trs;
	struct g_raid_softc *sc;
	u_int s;

	sc = vol->v_softc;
	trs = (struct g_raid_tr_raid1e_object *)vol->v_tr;
	if (trs->trso_stopping &&
	    (trs->trso_flags & TR_RAID1E_F_DOING_SOME) == 0)
		s = G_RAID_VOLUME_S_STOPPED;
	else if (trs->trso_starting)
		s = G_RAID_VOLUME_S_STARTING;
	else {
		if ((vol->v_disks_count % N) == 0)
			s = FUNC4(vol);
		else
			s = FUNC5(vol);
	}
	if (s != vol->v_state) {
		FUNC2(vol, FUNC0(s) ?
		    G_RAID_VOLUME_E_UP : G_RAID_VOLUME_E_DOWN,
		    G_RAID_EVENT_VOLUME);
		FUNC1(vol, s);
		if (!trs->trso_starting && !trs->trso_stopping)
			FUNC6(sc, vol, NULL, NULL);
	}
	if (!trs->trso_starting && !trs->trso_stopping)
		FUNC3(vol->v_tr, sd);
	return (0);
}