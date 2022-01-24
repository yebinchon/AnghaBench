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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mfi_pd_info {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ MFI_DCMD_PD_CLEAR_ABORT ; 
 scalar_t__ MFI_DCMD_PD_CLEAR_START ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,struct mfi_pd_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mfi_unit ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char FUNC7 (char) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(int ac, char **av)
{
	struct mfi_pd_info info;
	uint32_t opcode;
	uint16_t device_id;
	uint8_t mbox[4];
	char *s1;
	int error, fd;

	if (ac != 3) {
		FUNC9("drive clear: %s", ac > 3 ? "extra arguments" :
		    "drive and action requires");
		return (EINVAL);
	}

	for (s1 = av[2]; *s1 != '\0'; s1++)
		*s1 = FUNC7(*s1);
	if (FUNC6(av[2], "start") == 0)
		opcode = MFI_DCMD_PD_CLEAR_START;
	else if ((FUNC6(av[2], "stop") == 0) || (FUNC6(av[2], "abort") == 0))
		opcode = MFI_DCMD_PD_CLEAR_ABORT;
	else {
		FUNC9("drive clear: invalid action, must be 'start' or 'stop'\n");
		return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC8("mfi_open");
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
		FUNC8("Failed to fetch info for drive %u", device_id);
		FUNC0(fd);
		return (error);
	}

	FUNC1(&mbox[0], &info.ref);
	if (FUNC2(fd, opcode, NULL, 0, mbox, 4, NULL) < 0) {
		error = errno;
		FUNC8("Failed to %s clear on drive %u",
		    opcode == MFI_DCMD_PD_CLEAR_START ? "start" : "stop",
		    device_id);
		FUNC0(fd);
		return (error);
	}

	FUNC0(fd);
	return (0);
}