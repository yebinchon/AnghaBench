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
struct mfi_bbu_properties {unsigned long learn_delay_interval; int auto_learn_mode; char bbu_mode; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ MFI_STAT_OK ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 scalar_t__ FUNC1 (int,struct mfi_bbu_properties*,scalar_t__*) ; 
 scalar_t__ FUNC2 (int,struct mfi_bbu_properties*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  mfi_unit ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 unsigned long FUNC7 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(int ac, char **av)
{
	struct mfi_bbu_properties props;
	unsigned long delay;
	uint8_t status;
	int error, fd;
	char *mode, *endptr;

	status = MFI_STAT_OK;
	error = 0;

	if (ac != 3) {
		FUNC9("bbu: property and value required");
		return (EINVAL);
	}

	fd = FUNC3(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC8("mfi_open");
		return (error);
	}

	if (FUNC1(fd, &props, &status) < 0) {
		error = errno;
		FUNC8("Failed to get BBU properties");
		goto done;
	} else if (status != MFI_STAT_OK) {
		FUNC9("Failed to get BBU properties: %s", FUNC4(status));
		error = EIO;
		goto done;
	}

	if (FUNC5(av[1], "learn-delay") == 0) {
		delay = FUNC7(av[2], &endptr, 10);
		if (FUNC6(av[2]) == 0 || *endptr != '\0' || delay > 255) {
			FUNC9("Invalid learn delay '%s'", av[2]);
			error = EINVAL;
			goto done;
		}

		props.learn_delay_interval = delay;
	} else if (FUNC5(av[1], "autolearn-mode") == 0) {
		mode = av[2];

		if (FUNC5(av[2], "enable") == 0)
			props.auto_learn_mode = 0;
		else if (FUNC5(av[2], "disable") == 0)
			props.auto_learn_mode = 1;
		else if (mode[0] >= '0' && mode[0] <= '2' && mode[1] == '\0')
			props.auto_learn_mode = mode[0] - '0';
		else {
			FUNC9("Invalid mode '%s'", mode);
			error = EINVAL;
			goto done;
		}
	} else if (FUNC5(av[1], "bbu-mode") == 0) {
		if (props.bbu_mode == 0) {
			FUNC9("This BBU does not implement different modes");
			error = EINVAL;
			goto done;
		}

		/* The mode must be an integer between 1 and 5. */
		mode = av[2];
		if (mode[0] < '1' || mode[0] > '5' || mode[1] != '\0') {
			FUNC9("Invalid mode '%s'", mode);
			error = EINVAL;
			goto done;
		}

		props.bbu_mode = mode[0] - '0';
	} else {
		FUNC9("bbu: Invalid command '%s'", av[1]);
		error = EINVAL;
		goto done;
	}

	if (FUNC2(fd, &props, &status) < 0) {
		error = errno;
		FUNC8("Failed to set BBU properties");
		goto done;
	} else if (status != MFI_STAT_OK) {
		FUNC9("Failed to set BBU properties: %s", FUNC4(status));
		error = EIO;
		goto done;
	}

done:
	FUNC0(fd);

	return (error);
}