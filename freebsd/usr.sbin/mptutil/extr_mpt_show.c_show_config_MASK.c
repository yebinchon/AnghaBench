#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ HotSparePool; } ;
struct mpt_standalone_disk {int NumActiveVolumes; int NumActivePhysDisks; char* Name; int NumPhysDisks; int NumHotSpares; char* devname; TYPE_3__* HotSpare; TYPE_1__ VolumeSettings; TYPE_2__* PhysDisk; TYPE_4__* RaidVolume; } ;
struct TYPE_8__ {int /*<<< orphan*/  VolumeID; int /*<<< orphan*/  VolumeBus; int /*<<< orphan*/  VolumeType; } ;
struct TYPE_7__ {int PhysDiskNum; int /*<<< orphan*/  HotSparePool; } ;
struct TYPE_6__ {int PhysDiskNum; } ;
typedef  TYPE_2__ RAID_VOL0_PHYS_DISK ;
typedef  TYPE_3__ IOC_5_HOT_SPARE ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_RAID_VOL_1 ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_RAID_VOL_0 ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_RAID_PHYS_DISK_0 ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_IOC_5 ;
typedef  TYPE_4__ CONFIG_PAGE_IOC_2_RAID_VOL ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_IOC_2 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_standalone_disk*) ; 
 scalar_t__ FUNC3 (int,int*,struct mpt_standalone_disk**) ; 
 int FUNC4 (int) ; 
 struct mpt_standalone_disk* FUNC5 (int,int,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 struct mpt_standalone_disk* FUNC7 (int,int,int /*<<< orphan*/ *) ; 
 int mpt_unit ; 
 struct mpt_standalone_disk* FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpt_standalone_disk* FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mpt_standalone_disk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct mpt_standalone_disk*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mpt_standalone_disk*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int
FUNC18(int ac, char **av)
{
	CONFIG_PAGE_IOC_2 *ioc2;
	CONFIG_PAGE_IOC_2_RAID_VOL *vol;
	CONFIG_PAGE_IOC_5 *ioc5;
	IOC_5_HOT_SPARE *spare;
	CONFIG_PAGE_RAID_VOL_0 *vinfo;
	RAID_VOL0_PHYS_DISK *disk;
	CONFIG_PAGE_RAID_VOL_1 *vnames;
	CONFIG_PAGE_RAID_PHYS_DISK_0 *pinfo;
	struct mpt_standalone_disk *sdisks;
	int error, fd, i, j, nsdisks;

	if (ac != 1) {
		FUNC17("show config: extra arguments");
		return (EINVAL);
	}

	fd = FUNC4(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC16("mpt_open");
		return (error);
	}

	/* Get the config from the controller. */
	ioc2 = FUNC7(fd, 2, NULL);
	ioc5 = FUNC7(fd, 5, NULL);
	if (ioc2 == NULL || ioc5 == NULL) {
		error = errno;
		FUNC16("Failed to get config");
		FUNC2(ioc2);
		FUNC0(fd);
		return (error);
	}
	if (FUNC3(fd, &nsdisks, &sdisks) < 0) {
		error = errno;
		FUNC16("Failed to get standalone drive list");
		FUNC2(ioc5);
		FUNC2(ioc2);
		FUNC0(fd);
		return (error);
	}

	/* Dump out the configuration. */
	FUNC15("mpt%d Configuration: %d volumes, %d drives\n",
	    mpt_unit, ioc2->NumActiveVolumes, ioc2->NumActivePhysDisks +
	    nsdisks);
	vol = ioc2->RaidVolume;
	for (i = 0; i < ioc2->NumActiveVolumes; vol++, i++) {
		FUNC15("    volume %s ", FUNC10(vol->VolumeBus,
		    vol->VolumeID));
		vinfo = FUNC8(fd, vol->VolumeBus, vol->VolumeID, NULL);
		if (vinfo == NULL) {
			FUNC15("%s UNKNOWN", FUNC6(vol->VolumeType));
		} else
			FUNC14(vinfo, -1);
		vnames = FUNC9(fd, vol->VolumeBus, vol->VolumeID, NULL);
		if (vnames != NULL) {
			if (vnames->Name[0] != '\0')
				FUNC15(" <%s>", vnames->Name);
			FUNC2(vnames);
		}
		if (vinfo == NULL) {
			FUNC15("\n");
			continue;
		}
		FUNC15(" spans:\n");
		disk = vinfo->PhysDisk;
		for (j = 0; j < vinfo->NumPhysDisks; disk++, j++) {
			FUNC15("        drive %u ", disk->PhysDiskNum);
			pinfo = FUNC5(fd, disk->PhysDiskNum, NULL);
			if (pinfo != NULL) {
				FUNC11(pinfo, -1, 0);
				FUNC2(pinfo);
			}
			FUNC15("\n");
		}
		if (vinfo->VolumeSettings.HotSparePool != 0) {
			FUNC15("        spare pools: ");
			FUNC12(vinfo->VolumeSettings.HotSparePool);
			FUNC15("\n");
		}
		FUNC2(vinfo);
	}

	spare = ioc5->HotSpare;
	for (i = 0; i < ioc5->NumHotSpares; spare++, i++) {
		FUNC15("    spare %u ", spare->PhysDiskNum);
		pinfo = FUNC5(fd, spare->PhysDiskNum, NULL);
		if (pinfo != NULL) {
			FUNC11(pinfo, -1, 0);
			FUNC2(pinfo);
		}
		FUNC15(" backs pool %d\n", FUNC1(spare->HotSparePool) - 1);
	}
	for (i = 0; i < nsdisks; i++) {
		FUNC15("    drive %s ", sdisks[i].devname);
		FUNC13(&sdisks[i], -1, 0);
		FUNC15("\n");
	}
	FUNC2(ioc2);
	FUNC2(ioc5);
	FUNC2(sdisks);
	FUNC0(fd);

	return (0);
}