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
struct intel_raid_conf {scalar_t__ generation; } ;
struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_intel_perdisk {struct intel_raid_conf* pd_meta; } ;
struct g_raid_md_intel_object {scalar_t__ mdio_generation; int mdio_disks_present; TYPE_1__* mdio_meta; scalar_t__ mdio_started; } ;
struct g_raid_disk {scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {scalar_t__ generation; int total_disks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,...) ; 
 int /*<<< orphan*/  M_MD_INTEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_softc*) ; 
 scalar_t__ FUNC3 (struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_md_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct intel_raid_conf*) ; 

__attribute__((used)) static void
FUNC6(struct g_raid_disk *disk)
{
	struct g_raid_softc *sc;
	struct g_raid_md_object *md;
	struct g_raid_md_intel_object *mdi;
	struct intel_raid_conf *pdmeta;
	struct g_raid_md_intel_perdisk *pd;

	sc = disk->d_softc;
	md = sc->sc_md;
	mdi = (struct g_raid_md_intel_object *)md;
	pd = (struct g_raid_md_intel_perdisk *)disk->d_md_data;
	pdmeta = pd->pd_meta;

	if (mdi->mdio_started) {
		if (FUNC3(disk))
			FUNC4(md, NULL, NULL, NULL);
	} else {
		/* If we haven't started yet - check metadata freshness. */
		if (mdi->mdio_meta == NULL ||
		    ((int32_t)(pdmeta->generation - mdi->mdio_generation)) > 0) {
			FUNC0(1, sc, "Newer disk");
			if (mdi->mdio_meta != NULL)
				FUNC1(mdi->mdio_meta, M_MD_INTEL);
			mdi->mdio_meta = FUNC5(pdmeta);
			mdi->mdio_generation = mdi->mdio_meta->generation;
			mdi->mdio_disks_present = 1;
		} else if (pdmeta->generation == mdi->mdio_generation) {
			mdi->mdio_disks_present++;
			FUNC0(1, sc, "Matching disk (%d of %d up)",
			    mdi->mdio_disks_present,
			    mdi->mdio_meta->total_disks);
		} else {
			FUNC0(1, sc, "Older disk");
		}
		/* If we collected all needed disks - start array. */
		if (mdi->mdio_disks_present == mdi->mdio_meta->total_disks)
			FUNC2(sc);
	}
}