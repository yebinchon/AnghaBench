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
struct TYPE_2__ {int HotSparePool; } ;
struct mpt_standalone_disk {TYPE_1__ PhysDiskSettings; } ;
struct mpt_drive_list {int dummy; } ;
typedef  int /*<<< orphan*/  U8 ;
typedef  int /*<<< orphan*/  U32 ;
typedef  struct mpt_standalone_disk CONFIG_PAGE_RAID_PHYS_DISK_0 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS ; 
 int MPI_RAID_HOT_SPARE_POOL_0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int,char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_standalone_disk*) ; 
 scalar_t__ FUNC3 (int,struct mpt_standalone_disk*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,int*,struct mpt_standalone_disk**) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_drive_list*) ; 
 scalar_t__ FUNC6 (struct mpt_standalone_disk*) ; 
 int FUNC7 (struct mpt_drive_list*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,struct mpt_standalone_disk*,int,int*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct mpt_standalone_disk* FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpt_drive_list* FUNC11 (int) ; 
 int FUNC12 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_unit ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int
FUNC16(int ac, char **av)
{
	CONFIG_PAGE_RAID_PHYS_DISK_0 *info;
	struct mpt_standalone_disk *sdisks;
	struct mpt_drive_list *list;
	U8 PhysDiskNum;
	int error, fd, i, nsdisks, pool;

	if (ac < 2) {
		FUNC15("add spare: drive required");
		return (EINVAL);
	}
	if (ac > 3) {
		FUNC15("add spare: extra arguments");
		return (EINVAL);
	}

	fd = FUNC9(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC13("mpt_open");
		return (error);
	}

	if (ac == 3) {
		error = FUNC1(fd, av[2], &pool);
		if (error) {
			FUNC0(fd);
			return (error);
		}
	} else
		pool = MPI_RAID_HOT_SPARE_POOL_0;

	list = FUNC11(fd);
	if (list == NULL)
		return (errno);

	error = FUNC7(list, av[1], &PhysDiskNum);
	if (error) {
		error = FUNC4(fd, &nsdisks, &sdisks);
		if (error != 0) {
			FUNC13("Failed to fetch standalone disk list");
			FUNC5(list);
			FUNC0(fd);
			return (error);
		}

		if (FUNC8(av[1], sdisks, nsdisks, &i) <
		    0) {
			error = errno;
			FUNC13("Unable to lookup drive %s", av[1]);
			FUNC5(list);
			FUNC0(fd);
			return (error);
		}

		if (FUNC6(&sdisks[i]) < 0) {
			FUNC5(list);
			FUNC0(fd);
			return (errno);
		}

		if (FUNC3(fd, &sdisks[i], &PhysDiskNum) < 0) {
			error = errno;
			FUNC13("Failed to create physical disk page");
			FUNC5(list);
			FUNC0(fd);
			return (error);
		}
		FUNC2(sdisks);
	}
	FUNC5(list);

	info = FUNC10(fd, PhysDiskNum, NULL);
	if (info == NULL) {
		error = errno;
		FUNC13("Failed to fetch drive info");
		FUNC0(fd);
		return (error);
	}

	info->PhysDiskSettings.HotSparePool = pool;
	error = FUNC12(fd, MPI_RAID_ACTION_CHANGE_PHYSDISK_SETTINGS, 0,
	    0, PhysDiskNum, *(U32 *)&info->PhysDiskSettings, NULL, 0, NULL,
	    NULL, 0, NULL, NULL, 0);
	if (error) {
		FUNC14(error, "Failed to assign spare");
		FUNC0(fd);
		return (error);
	}

	FUNC2(info);
	FUNC0(fd);

	return (0);
}