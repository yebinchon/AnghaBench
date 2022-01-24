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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct mfi_pd_info {int fw_state; int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFI_DCMD_PD_STATE_SET ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char*,int*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int,struct mfi_pd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static int
FUNC9(char *drive, uint16_t new_state)
{
	struct mfi_pd_info info;
	uint16_t device_id;
	uint8_t mbox[6];
	int error, fd;

	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC7("mfi_open");
		return (error);
	}

	error = FUNC3(fd, drive, &device_id);
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

	/* Try to change the state. */
	if (info.fw_state == new_state) {
		FUNC8("Drive %u is already in the desired state", device_id);
		FUNC0(fd);
		return (EINVAL);
	}

	FUNC1(&mbox[0], &info.ref);
	mbox[4] = new_state & 0xff;
	mbox[5] = new_state >> 8;
	if (FUNC2(fd, MFI_DCMD_PD_STATE_SET, NULL, 0, mbox, 6,
	    NULL) < 0) {
		error = errno;
		FUNC7("Failed to set drive %u to %s", device_id,
		    FUNC6(new_state));
		FUNC0(fd);
		return (error);
	}

	FUNC0(fd);

	return (0);
}