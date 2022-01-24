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
struct mpt_standalone_disk {char* devname; } ;
struct mpt_drive_list {int ndrives; TYPE_1__** drives; } ;
struct TYPE_3__ {int PhysDiskNum; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  STANDALONE_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (struct mpt_standalone_disk*) ; 
 scalar_t__ FUNC2 (int,int*,struct mpt_standalone_disk**) ; 
 int /*<<< orphan*/  FUNC3 (struct mpt_drive_list*) ; 
 int FUNC4 (int) ; 
 struct mpt_drive_list* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int mpt_unit ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mpt_standalone_disk*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int
FUNC13(int ac, char **av)
{
	struct mpt_drive_list *list;
	struct mpt_standalone_disk *sdisks;
	int error, fd, i, len, nsdisks, state_len;

	if (ac != 1) {
		FUNC12("show drives: extra arguments");
		return (EINVAL);
	}

	fd = FUNC4(mpt_unit);
	if (fd < 0) {
		error = errno;
		FUNC11("mpt_open");
		return (error);
	}

	/* Get the drive list. */
	list = FUNC5(fd);
	if (list == NULL) {
		error = errno;
		FUNC0(fd);
		FUNC11("Failed to get drive list");
		return (error);
	}

	/* Fetch the list of standalone disks for this controller. */
	state_len = 0;
	if (FUNC2(fd, &nsdisks, &sdisks) != 0) {
		nsdisks = 0;
		sdisks = NULL;
	}
	if (nsdisks != 0)
		state_len = FUNC10(STANDALONE_STATE);

	/* Walk the drive list to determine width of state column. */
	for (i = 0; i < list->ndrives; i++) {
		len = FUNC10(FUNC6(list->drives[i]));
		if (len > state_len)
			state_len = len;
	}

	/* List the drives. */
	FUNC9("mpt%d Physical Drives:\n", mpt_unit);
	for (i = 0; i < list->ndrives; i++) {
		FUNC9("%4u ", list->drives[i]->PhysDiskNum);
		FUNC7(list->drives[i], state_len, 1);
		FUNC9("\n");
	}
	FUNC3(list);
	for (i = 0; i < nsdisks; i++) {
		FUNC9("%4s ", sdisks[i].devname);
		FUNC8(&sdisks[i], state_len, 1);
		FUNC9("\n");
	}
	FUNC1(sdisks);

	FUNC0(fd);

	return (0);
}