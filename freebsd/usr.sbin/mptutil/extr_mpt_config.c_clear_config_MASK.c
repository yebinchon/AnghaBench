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
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  VolumeID; int /*<<< orphan*/  VolumeBus; } ;
struct TYPE_11__ {int NumActiveVolumes; int NumHotSpares; int NumPhysDisks; TYPE_2__* PhysDisk; TYPE_1__* HotSpare; TYPE_5__* RaidVolume; } ;
struct TYPE_10__ {int /*<<< orphan*/  PhysDiskNum; } ;
struct TYPE_9__ {int /*<<< orphan*/  PhysDiskNum; } ;
typedef  TYPE_1__ IOC_5_HOT_SPARE ;
typedef  TYPE_2__ IOC_3_PHYS_DISK ;
typedef  TYPE_3__ CONFIG_PAGE_IOC_5 ;
typedef  TYPE_3__ CONFIG_PAGE_IOC_3 ;
typedef  TYPE_5__ CONFIG_PAGE_IOC_2_RAID_VOL ;
typedef  TYPE_3__ CONFIG_PAGE_IOC_2 ;

/* Variables and functions */
 int EBUSY ; 
 int MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS ; 
 int MPI_RAID_ACTION_ADATA_ZERO_LBA0 ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_DELETE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 () ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int mpt_unit ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(int ac, char **av)
{
	CONFIG_PAGE_IOC_2 *ioc2;
	CONFIG_PAGE_IOC_2_RAID_VOL *vol;
	CONFIG_PAGE_IOC_3 *ioc3;
	IOC_3_PHYS_DISK *disk;
	CONFIG_PAGE_IOC_5 *ioc5;
	IOC_5_HOT_SPARE *spare;
	int ch, error, fd, i;

	fd = FUNC5(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mpt_open");
		return (error);
	}

	ioc2 = FUNC7(fd, 2, NULL);
	if (ioc2 == NULL) {
		error = errno;
		FUNC11("Failed to fetch volume list");
		FUNC0(fd);
		return (error);
	}

	/* Lock all the volumes first. */
	vol = ioc2->RaidVolume;
	for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
		if (FUNC4(vol->VolumeBus, vol->VolumeID) < 0) {
			FUNC13("Volume %s is busy and cannot be deleted",
			    FUNC9(vol->VolumeBus, vol->VolumeID));
			FUNC1(ioc2);
			FUNC0(fd);
			return (EBUSY);
		}
	}

	FUNC10(
	    "Are you sure you wish to clear the configuration on mpt%u? [y/N] ",
	    mpt_unit);
	ch = FUNC2();
	if (ch != 'y' && ch != 'Y') {
		FUNC10("\nAborting\n");
		FUNC1(ioc2);
		FUNC0(fd);
		return (0);
	}

	/* Delete all the volumes. */
	vol = ioc2->RaidVolume;
	for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
		error = FUNC6(fd, MPI_RAID_ACTION_DELETE_VOLUME,
		    vol->VolumeBus, vol->VolumeID, 0,
		    MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS |
		    MPI_RAID_ACTION_ADATA_ZERO_LBA0, NULL, 0, NULL, NULL, 0,
		    NULL, NULL, 0);
		if (error)
			FUNC12(error, "Failed to delete volume %s",
			    FUNC9(vol->VolumeBus, vol->VolumeID));
	}
	FUNC1(ioc2);

	/* Delete all the spares. */
	ioc5 = FUNC7(fd, 5, NULL);
	if (ioc5 == NULL)
		FUNC11("Failed to fetch spare list");
	else {
		spare = ioc5->HotSpare;
		for (i = 0; i < ioc5->NumHotSpares; spare++, i++)
			if (FUNC3(fd, spare->PhysDiskNum) < 0)
				FUNC11("Failed to delete physical disk %d",
				    spare->PhysDiskNum);
		FUNC1(ioc5);
	}

	/* Delete any RAID physdisks that may be left. */
	ioc3 = FUNC7(fd, 3, NULL);
	if (ioc3 == NULL)
		FUNC11("Failed to fetch drive list");
	else {
		disk = ioc3->PhysDisk;
		for (i = 0; i < ioc3->NumPhysDisks; disk++, i++)
			if (FUNC3(fd, disk->PhysDiskNum) < 0)
				FUNC11("Failed to delete physical disk %d",
				    disk->PhysDiskNum);
		FUNC1(ioc3);
	}

	FUNC10("mpt%d: Configuration cleared\n", mpt_unit);
	FUNC8(-1, -1);
	FUNC0(fd);

	return (0);
}