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
typedef  scalar_t__ U8 ;
struct TYPE_5__ {scalar_t__ State; } ;
struct TYPE_6__ {TYPE_1__ PhysDiskStatus; } ;
typedef  TYPE_2__ CONFIG_PAGE_RAID_PHYS_DISK_0 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpt_drive_list*) ; 
 scalar_t__ FUNC3 (struct mpt_drive_list*,char*,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC5 (int,scalar_t__,int /*<<< orphan*/ *) ; 
 struct mpt_drive_list* FUNC6 (int) ; 
 int FUNC7 (int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpt_unit ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(char *drive, U8 Action, U8 State, const char *name)
{
	CONFIG_PAGE_RAID_PHYS_DISK_0 *info;
	struct mpt_drive_list *list;
	U8 PhysDiskNum;
	int error, fd;

	fd = FUNC4(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC8("mpt_open");
		return (error);
	}

	list = FUNC6(fd);
	if (list == NULL) {
		FUNC0(fd);
		return (errno);
	}

	if (FUNC3(list, drive, &PhysDiskNum) < 0) {
		error = errno;
		FUNC8("Failed to find drive %s", drive);
		FUNC0(fd);
		return (error);
	}
	FUNC2(list);

	/* Get the info for this drive. */
	info = FUNC5(fd, PhysDiskNum, NULL);
	if (info == NULL) {
		error = errno;
		FUNC8("Failed to fetch info for drive %u", PhysDiskNum);
		FUNC0(fd);
		return (error);
	}

	/* Try to change the state. */
	if (info->PhysDiskStatus.State == State) {
		FUNC10("Drive %u is already in the desired state", PhysDiskNum);
		FUNC1(info);
		FUNC0(fd);
		return (EINVAL);
	}

	error = FUNC7(fd, Action, 0, 0, PhysDiskNum, 0, NULL, 0, NULL,
	    NULL, 0, NULL, NULL, 0);
	if (error) {
		FUNC9(error, "Failed to set drive %u to %s", PhysDiskNum, name);
		FUNC1(info);
		FUNC0(fd);
		return (error);
	}

	FUNC1(info);
	FUNC0(fd);

	return (0);
}