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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MFI_DCMD_PD_LOCATE_START ; 
 scalar_t__ MFI_DCMD_PD_LOCATE_STOP ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfi_unit ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static int
FUNC8(int ac, char **av)
{
	uint16_t device_id;
	uint32_t opcode;
	int error, fd;
	uint8_t mbox[4];

	if (ac != 3) {
		FUNC7("locate: %s", ac > 3 ? "extra arguments" :
		    "drive and state required");
		return (EINVAL);
	}

	if (FUNC5(av[2], "on") == 0 || FUNC5(av[2], "start") == 0)
		opcode = MFI_DCMD_PD_LOCATE_START;
	else if (FUNC5(av[2], "off") == 0 ||
	    FUNC5(av[2], "stop") == 0)
		opcode = MFI_DCMD_PD_LOCATE_STOP;
	else {
		FUNC7("locate: invalid state %s", av[2]);
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


	FUNC1(&mbox[0], device_id);
	mbox[2] = 0;
	mbox[3] = 0;
	if (FUNC2(fd, opcode, NULL, 0, mbox, 4, NULL) < 0) {
		error = errno;
		FUNC6("Failed to %s locate on drive %u",
		    opcode == MFI_DCMD_PD_LOCATE_START ? "start" : "stop",
		    device_id);
		FUNC0(fd);
		return (error);
	}
	FUNC0(fd);

	return (0);
}