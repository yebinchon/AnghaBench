#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct promise_raid_conf {scalar_t__ generation; int /*<<< orphan*/  volume_id; int /*<<< orphan*/  array_number; } ;
struct g_raid_volume {struct g_raid_md_promise_pervolume* v_md_data; } ;
struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_promise_pervolume {scalar_t__ pv_generation; int pv_disks_present; TYPE_1__* pv_meta; scalar_t__ pv_started; int /*<<< orphan*/  pv_start_co; int /*<<< orphan*/  pv_id; } ;
struct g_raid_md_promise_perdisk {int pd_subdisks; struct promise_raid_conf** pd_meta; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_disk {scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
typedef  scalar_t__ int16_t ;
struct TYPE_3__ {scalar_t__ generation; int total_disks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,...) ; 
 int /*<<< orphan*/  G_RAID_DISK_S_SPARE ; 
 int /*<<< orphan*/  M_MD_PROMISE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_disk*,int /*<<< orphan*/ ) ; 
 struct g_raid_volume* FUNC5 (struct g_raid_softc*,char*,int /*<<< orphan*/ ) ; 
 struct g_raid_volume* FUNC6 (struct g_raid_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct g_raid_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct g_raid_volume*) ; 
 scalar_t__ FUNC9 (struct g_raid_disk*,int,struct g_raid_volume*) ; 
 int /*<<< orphan*/  FUNC10 (struct g_raid_md_object*,struct g_raid_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_raid_promise_go ; 
 int g_raid_start_timeout ; 
 int hz ; 
 struct g_raid_md_promise_pervolume* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC12 (struct promise_raid_conf*) ; 
 int /*<<< orphan*/  FUNC13 (struct promise_raid_conf*,char*) ; 

__attribute__((used)) static void
FUNC14(struct g_raid_disk *disk)
{
	struct g_raid_softc *sc;
	struct g_raid_md_object *md;
	struct promise_raid_conf *pdmeta;
	struct g_raid_md_promise_perdisk *pd;
	struct g_raid_md_promise_pervolume *pv;
	struct g_raid_volume *vol;
	int i;
	char buf[33];

	sc = disk->d_softc;
	md = sc->sc_md;
	pd = (struct g_raid_md_promise_perdisk *)disk->d_md_data;

	if (pd->pd_subdisks == 0) {
		FUNC4(disk, G_RAID_DISK_S_SPARE);
		FUNC7(sc);
		return;
	}

	for (i = 0; i < pd->pd_subdisks; i++) {
		pdmeta = pd->pd_meta[i];

		/* Look for volume with matching ID. */
		vol = FUNC6(sc, pdmeta->volume_id);
		if (vol == NULL) {
			FUNC13(pdmeta, buf);
			vol = FUNC5(sc, buf, pdmeta->array_number);
			pv = FUNC11(sizeof(*pv), M_MD_PROMISE, M_WAITOK | M_ZERO);
			pv->pv_id = pdmeta->volume_id;
			vol->v_md_data = pv;
			FUNC1(&pv->pv_start_co, 1);
			FUNC2(&pv->pv_start_co,
			    g_raid_start_timeout * hz,
			    g_raid_promise_go, vol);
		} else
			pv = vol->v_md_data;

		/* If we haven't started yet - check metadata freshness. */
		if (pv->pv_meta == NULL || !pv->pv_started) {
			if (pv->pv_meta == NULL ||
			    ((int16_t)(pdmeta->generation - pv->pv_generation)) > 0) {
				FUNC0(1, sc, "Newer disk");
				if (pv->pv_meta != NULL)
					FUNC3(pv->pv_meta, M_MD_PROMISE);
				pv->pv_meta = FUNC12(pdmeta);
				pv->pv_generation = pv->pv_meta->generation;
				pv->pv_disks_present = 1;
			} else if (pdmeta->generation == pv->pv_generation) {
				pv->pv_disks_present++;
				FUNC0(1, sc, "Matching disk (%d of %d up)",
				    pv->pv_disks_present,
				    pv->pv_meta->total_disks);
			} else {
				FUNC0(1, sc, "Older disk");
			}
		}
	}

	for (i = 0; i < pd->pd_subdisks; i++) {
		pdmeta = pd->pd_meta[i];

		/* Look for volume with matching ID. */
		vol = FUNC6(sc, pdmeta->volume_id);
		if (vol == NULL)
			continue;
		pv = vol->v_md_data;

		if (pv->pv_started) {
			if (FUNC9(disk, i, vol))
				FUNC10(md, vol, NULL, NULL);
		} else {
			/* If we collected all needed disks - start array. */
			if (pv->pv_disks_present == pv->pv_meta->total_disks)
				FUNC8(vol);
		}
	}
}