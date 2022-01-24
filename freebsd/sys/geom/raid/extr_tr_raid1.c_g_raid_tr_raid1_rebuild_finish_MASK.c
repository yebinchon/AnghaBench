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
struct g_raid_tr_raid1_object {struct g_raid_subdisk* trso_failed_sd; } ;
struct g_raid_tr_object {TYPE_1__* tro_volume; } ;
struct g_raid_subdisk {scalar_t__ sd_rebuild_pos; scalar_t__ sd_disk; int /*<<< orphan*/  sd_pos; TYPE_2__* sd_volume; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_name; } ;
struct TYPE_3__ {int /*<<< orphan*/  v_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  G_RAID_SUBDISK_S_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct g_raid_subdisk*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct g_raid_tr_raid1_object*) ; 

__attribute__((used)) static void
FUNC4(struct g_raid_tr_object *tr)
{
	struct g_raid_tr_raid1_object *trs;
	struct g_raid_subdisk *sd;

	trs = (struct g_raid_tr_raid1_object *)tr;
	sd = trs->trso_failed_sd;
	FUNC0(0, tr->tro_volume->v_softc,
	    "Subdisk %s:%d-%s rebuild completed.",
	    sd->sd_volume->v_name, sd->sd_pos,
	    sd->sd_disk ? FUNC2(sd->sd_disk) : "[none]");
	FUNC1(sd, G_RAID_SUBDISK_S_ACTIVE);
	sd->sd_rebuild_pos = 0;
	FUNC3(trs);
}