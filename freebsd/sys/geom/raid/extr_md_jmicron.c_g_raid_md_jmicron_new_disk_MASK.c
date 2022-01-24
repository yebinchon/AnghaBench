#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct jmicron_raid_conf {int flags; } ;
struct g_raid_softc {struct g_raid_md_object* sc_md; } ;
struct g_raid_md_object {int dummy; } ;
struct g_raid_md_jmicron_perdisk {struct jmicron_raid_conf* pd_meta; } ;
struct g_raid_md_jmicron_object {scalar_t__ mdio_total_disks; scalar_t__ mdio_disks_present; TYPE_1__* mdio_meta; scalar_t__ mdio_started; } ;
struct g_raid_disk {scalar_t__ d_md_data; struct g_raid_softc* d_softc; } ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  disk_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct g_raid_softc*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int JMICRON_F_BADSEC ; 
 int /*<<< orphan*/  M_MD_JMICRON ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct g_raid_softc*) ; 
 scalar_t__ FUNC3 (struct g_raid_disk*) ; 
 int /*<<< orphan*/  FUNC4 (struct g_raid_md_object*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (struct jmicron_raid_conf*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct jmicron_raid_conf*) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC9(struct g_raid_disk *disk)
{
	struct g_raid_softc *sc;
	struct g_raid_md_object *md;
	struct g_raid_md_jmicron_object *mdi;
	struct jmicron_raid_conf *pdmeta;
	struct g_raid_md_jmicron_perdisk *pd;

	sc = disk->d_softc;
	md = sc->sc_md;
	mdi = (struct g_raid_md_jmicron_object *)md;
	pd = (struct g_raid_md_jmicron_perdisk *)disk->d_md_data;
	pdmeta = pd->pd_meta;

	if (mdi->mdio_started) {
		if (FUNC3(disk))
			FUNC4(md, NULL, NULL, NULL);
	} else {
		/*
		 * If we haven't started yet - update common metadata
		 * to get subdisks details, avoiding data from spare disks.
		 */
		if (mdi->mdio_meta == NULL ||
		    FUNC6(mdi->mdio_meta,
		     mdi->mdio_meta->disk_id) == -3) {
			if (mdi->mdio_meta != NULL)
				FUNC1(mdi->mdio_meta, M_MD_JMICRON);
			mdi->mdio_meta = FUNC5(pdmeta);
			mdi->mdio_total_disks = FUNC7(pdmeta);
		}
		mdi->mdio_meta->flags |= pdmeta->flags & JMICRON_F_BADSEC;

		mdi->mdio_disks_present++;
		FUNC0(1, sc, "Matching disk (%d of %d+%d up)",
		    mdi->mdio_disks_present,
		    mdi->mdio_total_disks,
		    FUNC8(mdi->mdio_meta));

		/* If we collected all needed disks - start array. */
		if (mdi->mdio_disks_present == mdi->mdio_total_disks +
		    FUNC8(mdi->mdio_meta))
			FUNC2(sc);
	}
}