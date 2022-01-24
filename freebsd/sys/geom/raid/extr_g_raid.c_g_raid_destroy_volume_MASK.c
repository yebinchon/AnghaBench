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
struct g_raid_volume {int v_stopping; scalar_t__ v_state; scalar_t__ v_provider_open; int /*<<< orphan*/  v_name; struct g_raid_volume* v_subdisks; struct g_raid_disk* sd_disk; scalar_t__ v_rootmount; int /*<<< orphan*/ * v_tr; int /*<<< orphan*/ * v_provider; struct g_raid_softc* v_softc; } ;
struct g_raid_softc {scalar_t__ sc_stopping; scalar_t__ sc_md; int /*<<< orphan*/  sc_volumes; } ;
struct g_raid_disk {int /*<<< orphan*/  d_subdisks; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ G_RAID_DESTROY_HARD ; 
 int G_RAID_MAX_SUBDISKS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct g_raid_volume*) ; 
 int /*<<< orphan*/  G_RAID_NODE_E_WAKE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ G_RAID_VOLUME_S_STOPPED ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_RAID ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct g_raid_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct g_raid_volume*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid_softc*,struct g_raid_volume*) ; 
 scalar_t__ FUNC8 (struct g_raid_softc*,struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC9 (struct g_raid_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  sd_next ; 
 int /*<<< orphan*/  v_global_next ; 
 int /*<<< orphan*/  v_next ; 

int
FUNC14(struct g_raid_volume *vol)
{
	struct g_raid_softc *sc;
	struct g_raid_disk *disk;
	int i;

	sc = vol->v_softc;
	FUNC0(2, sc, "Destroying volume %s.", vol->v_name);
	vol->v_stopping = 1;
	if (vol->v_state != G_RAID_VOLUME_S_STOPPED) {
		if (vol->v_tr) {
			FUNC3(vol->v_tr);
			return (EBUSY);
		} else
			vol->v_state = G_RAID_VOLUME_S_STOPPED;
	}
	if (FUNC8(sc, vol) != 0)
		return (EBUSY);
	if (vol->v_provider != NULL)
		return (EBUSY);
	if (vol->v_provider_open != 0)
		return (EBUSY);
	if (vol->v_tr) {
		FUNC2(vol->v_tr);
		FUNC12((kobj_t)vol->v_tr, M_RAID);
		vol->v_tr = NULL;
	}
	if (vol->v_rootmount)
		FUNC13(vol->v_rootmount);
	FUNC10();
	FUNC4(vol, v_global_next);
	FUNC11();
	FUNC5(&sc->sc_volumes, vol, v_next);
	for (i = 0; i < G_RAID_MAX_SUBDISKS; i++) {
		FUNC7(sc, &vol->v_subdisks[i]);
		disk = vol->v_subdisks[i].sd_disk;
		if (disk == NULL)
			continue;
		FUNC5(&disk->d_subdisks, &vol->v_subdisks[i], sd_next);
	}
	FUNC0(2, sc, "Volume %s destroyed.", vol->v_name);
	if (sc->sc_md)
		FUNC1(sc->sc_md, vol);
	FUNC7(sc, vol);
	FUNC6(vol, M_RAID);
	if (sc->sc_stopping == G_RAID_DESTROY_HARD) {
		/* Wake up worker to let it selfdestruct. */
		FUNC9(sc, G_RAID_NODE_E_WAKE, 0);
	}
	return (0);
}