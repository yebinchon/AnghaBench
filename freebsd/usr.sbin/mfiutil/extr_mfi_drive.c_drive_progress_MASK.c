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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int active; int /*<<< orphan*/  clear; int /*<<< orphan*/  patrol; int /*<<< orphan*/  rbld; } ;
struct mfi_pd_info {TYPE_1__ prog_info; } ;

/* Variables and functions */
 int EINVAL ; 
 int MFI_DNAME_DEVICE_ID ; 
 int MFI_DNAME_HONOR_OPTS ; 
 int MFI_PD_PROGRESS_CLEAR ; 
 int MFI_PD_PROGRESS_PATROL ; 
 int MFI_PD_PROGRESS_REBUILD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct mfi_pd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(int ac, char **av)
{
	struct mfi_pd_info info;
	uint16_t device_id;
	int error, fd;

	if (ac != 2) {
		FUNC8("drive progress: %s", ac > 2 ? "extra arguments" :
		    "drive required");
		return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC7("mfi_open");
		return (error);
	}

	error = FUNC3(fd, av[1], &device_id);
	if (error) {
		FUNC0(fd);
		return (error);
	}

	/* Get the info for this drive. */
	if (FUNC5(fd, device_id, &info, NULL) < 0) {
		error = errno;
		FUNC7("Failed to fetch info for drive %u", device_id);
		FUNC0(fd);
		return (error);
	}
	FUNC0(fd);

	/* Display any of the active events. */
	if (info.prog_info.active & MFI_PD_PROGRESS_REBUILD)
		FUNC1("Rebuild", &info.prog_info.rbld);
	if (info.prog_info.active & MFI_PD_PROGRESS_PATROL)
		FUNC1("Patrol Read", &info.prog_info.patrol);
	if (info.prog_info.active & MFI_PD_PROGRESS_CLEAR)
		FUNC1("Clear", &info.prog_info.clear);
	if ((info.prog_info.active & (MFI_PD_PROGRESS_REBUILD |
	    MFI_PD_PROGRESS_PATROL | MFI_PD_PROGRESS_CLEAR)) == 0)
		FUNC6("No activity in progress for drive %s.\n",
		FUNC2(NULL, device_id,
		    MFI_DNAME_DEVICE_ID|MFI_DNAME_HONOR_OPTS));

	return (0);
}