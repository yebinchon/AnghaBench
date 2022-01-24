#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  char* uint16_t ;
struct mfi_pd_info {scalar_t__ fw_state; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFI_DCMD_PD_REBUILD_START ; 
 scalar_t__ MFI_PD_STATE_REBUILD ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char*,char**) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,char*,struct mfi_pd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(int ac, char **av)
{
	struct mfi_pd_info info;
	uint16_t device_id;
	uint8_t mbox[4];
	int error, fd;

	if (ac != 2) {
		FUNC7("start rebuild: %s", ac > 2 ? "extra arguments" :
		    "drive required");
		return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC6("mfi_open");
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
		FUNC6("Failed to fetch info for drive %u", device_id);
		FUNC0(fd);
		return (error);
	}

	/* Check the state, must be REBUILD. */
	if (info.fw_state != MFI_PD_STATE_REBUILD) {
		FUNC7("Drive %d is not in the REBUILD state", device_id);
		FUNC0(fd);
		return (EINVAL);
	}

	/* Start the rebuild. */
	FUNC1(&mbox[0], &info.ref);
	if (FUNC2(fd, MFI_DCMD_PD_REBUILD_START, NULL, 0, mbox, 4,
	    NULL) < 0) {
		error = errno;
		FUNC6("Failed to start rebuild on drive %u", device_id);
		FUNC0(fd);
		return (error);
	}
	FUNC0(fd);

	return (0);
}