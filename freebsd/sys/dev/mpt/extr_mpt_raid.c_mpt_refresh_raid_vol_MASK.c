#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mpt_softc {struct mpt_raid_disk* raid_disks; int /*<<< orphan*/  raid_page0_len; } ;
struct mpt_raid_volume {int /*<<< orphan*/  sync_progress; int /*<<< orphan*/  flags; TYPE_4__* config_page; } ;
struct mpt_raid_disk {int /*<<< orphan*/  member_number; struct mpt_raid_volume* volume; } ;
struct TYPE_10__ {int /*<<< orphan*/  indicator_struct; } ;
struct mpt_raid_action_result {scalar_t__ action_status; TYPE_3__ action_data; } ;
typedef  int /*<<< orphan*/  request_t ;
struct TYPE_12__ {int /*<<< orphan*/  VolumePageNumber; } ;
struct TYPE_9__ {int Flags; } ;
struct TYPE_11__ {int NumPhysDisks; scalar_t__ VolumeType; TYPE_2__ VolumeStatus; TYPE_1__* PhysDisk; int /*<<< orphan*/  Header; } ;
struct TYPE_8__ {int PhysDiskNum; int /*<<< orphan*/  PhysDiskMap; } ;
typedef  TYPE_4__ CONFIG_PAGE_RAID_VOL_0 ;
typedef  TYPE_5__ CONFIG_PAGE_IOC_2_RAID_VOL ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  MPI_CONFIG_PAGETYPE_RAID_VOLUME ; 
 scalar_t__ MPI_IOCSTATUS_SUCCESS ; 
 int MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS ; 
 scalar_t__ MPI_RAID_ACTION_ASTATUS_SUCCESS ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_INDICATOR_STRUCT ; 
 scalar_t__ MPI_RAID_VOL_TYPE_IM ; 
 int /*<<< orphan*/  MPT_RVF_ACTIVE ; 
 int /*<<< orphan*/  MPT_RVF_UP2DATE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct mpt_raid_action_result* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct mpt_softc*,struct mpt_raid_volume*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct mpt_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mpt_softc*,struct mpt_raid_volume*,char*,...) ; 

__attribute__((used)) static void
FUNC11(struct mpt_softc *mpt, struct mpt_raid_volume *mpt_vol,
    CONFIG_PAGE_IOC_2_RAID_VOL *ioc_vol)
{
	CONFIG_PAGE_RAID_VOL_0 *vol_pg;
	struct mpt_raid_action_result *ar;
	request_t *req;
	int rv;
	int i;

	vol_pg = mpt_vol->config_page;
	mpt_vol->flags &= ~MPT_RVF_UP2DATE;

	rv = FUNC8(mpt, MPI_CONFIG_PAGETYPE_RAID_VOLUME, 0,
	    ioc_vol->VolumePageNumber, &vol_pg->Header, TRUE, 5000);
	if (rv != 0) {
		FUNC10(mpt, mpt_vol,
		    "mpt_refresh_raid_vol: Failed to read RAID Vol Hdr(%d)\n",
		    ioc_vol->VolumePageNumber);
		return;
	}

	rv = FUNC9(mpt, ioc_vol->VolumePageNumber,
	    &vol_pg->Header, mpt->raid_page0_len, TRUE, 5000);
	if (rv != 0) {
		FUNC10(mpt, mpt_vol,
		    "mpt_refresh_raid_vol: Failed to read RAID Vol Page(%d)\n",
		    ioc_vol->VolumePageNumber);
		return;
	}
	FUNC3(vol_pg);

	mpt_vol->flags |= MPT_RVF_ACTIVE;

	/* Update disk entry array data. */
	for (i = 0; i < vol_pg->NumPhysDisks; i++) {
		struct mpt_raid_disk *mpt_disk;
		mpt_disk = mpt->raid_disks + vol_pg->PhysDisk[i].PhysDiskNum;
		mpt_disk->volume = mpt_vol;
		mpt_disk->member_number = vol_pg->PhysDisk[i].PhysDiskMap;
		if (vol_pg->VolumeType == MPI_RAID_VOL_TYPE_IM) {
			mpt_disk->member_number--;
		}
	}

	if ((vol_pg->VolumeStatus.Flags
	   & MPI_RAIDVOL0_STATUS_FLAG_RESYNC_IN_PROGRESS) == 0)
		return;

	req = FUNC6(mpt, TRUE);
	if (req == NULL) {
		FUNC10(mpt, mpt_vol,
		    "mpt_refresh_raid_vol: Get request failed!\n");
		return;
	}
	rv = FUNC7(mpt, mpt_vol, NULL, req,
	    MPI_RAID_ACTION_INDICATOR_STRUCT, 0, 0, 0, FALSE, TRUE);
	if (rv == ETIMEDOUT) {
		FUNC10(mpt, mpt_vol,
		    "mpt_refresh_raid_vol: Progress Indicator fetch timeout\n");
		FUNC5(mpt, req);
		return;
	}

	ar = FUNC1(req);
	if (rv == 0
	 && ar->action_status == MPI_RAID_ACTION_ASTATUS_SUCCESS
	 && FUNC0(req) == MPI_IOCSTATUS_SUCCESS) {
		FUNC2(&mpt_vol->sync_progress,
		       &ar->action_data.indicator_struct,
		       sizeof(mpt_vol->sync_progress));
		FUNC4(&mpt_vol->sync_progress);
	} else {
		FUNC10(mpt, mpt_vol,
		    "mpt_refresh_raid_vol: Progress indicator fetch failed!\n");
	}
	FUNC5(mpt, req);
}