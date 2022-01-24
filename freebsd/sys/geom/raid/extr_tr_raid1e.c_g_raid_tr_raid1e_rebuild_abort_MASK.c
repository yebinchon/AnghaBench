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
struct g_raid_volume {int /*<<< orphan*/  v_softc; } ;
struct g_raid_tr_raid1e_object {int trso_flags; int /*<<< orphan*/  trso_lock_len; int /*<<< orphan*/  trso_lock_pos; struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {struct g_raid_volume* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_disk; int /*<<< orphan*/  sd_pos; TYPE_1__* sd_volume; } ;
struct TYPE_2__ {int /*<<< orphan*/  v_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int TR_RAID1E_F_ABORT ; 
 int TR_RAID1E_F_DOING_SOME ; 
 int TR_RAID1E_F_LOCKED ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_tr_raid1e_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_volume*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct g_raid_tr_object *tr)
{
	struct g_raid_tr_raid1e_object *trs;
	struct g_raid_subdisk *sd;
	struct g_raid_volume *vol;

	vol = tr->tro_volume;
	trs = (struct g_raid_tr_raid1e_object *)tr;
	sd = trs->trso_failed_sd;
	if (trs->trso_flags & TR_RAID1E_F_DOING_SOME) {
		FUNC0(1, vol->v_softc,
		    "Subdisk %s:%d-%s rebuild is aborting.",
		    sd->sd_volume->v_name, sd->sd_pos,
		    sd->sd_disk ? FUNC1(sd->sd_disk) : "[none]");
		trs->trso_flags |= TR_RAID1E_F_ABORT;
	} else {
		FUNC0(0, vol->v_softc,
		    "Subdisk %s:%d-%s rebuild aborted.",
		    sd->sd_volume->v_name, sd->sd_pos,
		    sd->sd_disk ? FUNC1(sd->sd_disk) : "[none]");
		trs->trso_flags &= ~TR_RAID1E_F_ABORT;
		if (trs->trso_flags & TR_RAID1E_F_LOCKED) {
			trs->trso_flags &= ~TR_RAID1E_F_LOCKED;
			FUNC3(tr->tro_volume,
			    trs->trso_lock_pos, trs->trso_lock_len);
		}
		FUNC2(trs);
	}
}