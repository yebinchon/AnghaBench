#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mpt_drive_list {int dummy; } ;
typedef  int /*<<< orphan*/  U8 ;
struct TYPE_5__ {scalar_t__ HotSparePool; } ;
struct TYPE_6__ {int /*<<< orphan*/  PhysDiskID; int /*<<< orphan*/  PhysDiskBus; TYPE_1__ PhysDiskSettings; } ;
typedef  TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_drive_list*) ; 
 int FUNC4 (struct mpt_drive_list*,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mpt_drive_list* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_unit ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

__attribute__((used)) static int
FUNC11(int ac, char **av)
{
	CONFIG_PAGE_RAID_PHYS_DISK_0 *info;
	struct mpt_drive_list *list;
	U8 PhysDiskNum;
	int error, fd;

	if (ac != 2) {
		FUNC10("remove spare: drive required");
		return (EINVAL);
	}

	fd = FUNC5(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC9("mpt_open");
		return (error);
	}

	list = FUNC7(fd);
	if (list == NULL) {
		FUNC0(fd);
		return (errno);
	}

	error = FUNC4(list, av[1], &PhysDiskNum);
	if (error) {
		FUNC9("Failed to find drive %s", av[1]);
		FUNC0(fd);
		return (error);
	}
	FUNC3(list);

	
	info = FUNC6(fd, PhysDiskNum, NULL);
	if (info == NULL) {
		error = errno;
		FUNC9("Failed to fetch drive info");
		FUNC0(fd);
		return (error);
	}

	if (info->PhysDiskSettings.HotSparePool == 0) {
		FUNC10("Drive %u is not a hot spare", PhysDiskNum);
		FUNC1(info);
		FUNC0(fd);
		return (EINVAL);
	}

	if (FUNC2(fd, PhysDiskNum) < 0) {
		error = errno;
		FUNC9("Failed to delete physical disk page");
		FUNC1(info);
		FUNC0(fd);
		return (error);
	}

	FUNC8(info->PhysDiskBus, info->PhysDiskID);
	FUNC1(info);
	FUNC0(fd);

	return (0);
}