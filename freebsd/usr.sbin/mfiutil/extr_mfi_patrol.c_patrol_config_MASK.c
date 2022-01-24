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
typedef  int /*<<< orphan*/  time_t ;
struct mfi_pr_properties {scalar_t__ next_exec; scalar_t__ exec_freq; scalar_t__ op_mode; } ;
typedef  int /*<<< orphan*/  prop ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int /*<<< orphan*/  MFI_DCMD_PR_SET_PROPERTIES ; 
 scalar_t__ MFI_PR_OPMODE_AUTO ; 
 scalar_t__ MFI_PR_OPMODE_DISABLED ; 
 scalar_t__ MFI_PR_OPMODE_MANUAL ; 
 int /*<<< orphan*/  O_RDWR ; 
 char* FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mfi_pr_properties*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int FUNC5 (int,struct mfi_pr_properties*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 long FUNC8 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

__attribute__((used)) static int
FUNC12(int ac, char **av)
{
	struct mfi_pr_properties prop;
	long val;
	time_t now;
	int error, fd;
	uint32_t at, next_exec, exec_freq;
	char *cp;
	uint8_t op_mode;

	exec_freq = 0;	/* GCC too stupid */
	next_exec = 0;
	if (ac < 2) {
		FUNC11("patrol: command required");
		return (EINVAL);
	}
	if (FUNC7(av[1], "auto") == 0) {
		op_mode = MFI_PR_OPMODE_AUTO;
		if (ac > 2) {
			if (FUNC7(av[2], "continuously") == 0)
				exec_freq = 0xffffffff;
			else {
				val = FUNC8(av[2], &cp, 0);
				if (*cp != '\0') {
					FUNC11("patrol: Invalid interval %s",
					    av[2]);
					return (EINVAL);
				}
				exec_freq = val;
			}
		}
		if (ac > 3) {
			val = FUNC8(av[3], &cp, 0);
			if (*cp != '\0' || val < 0) {
				FUNC11("patrol: Invalid start time %s", av[3]);
				return (EINVAL);
			}
			next_exec = val;
		}
	} else if (FUNC7(av[1], "manual") == 0)
		op_mode = MFI_PR_OPMODE_MANUAL;
	else if (FUNC7(av[1], "disable") == 0)
		op_mode = MFI_PR_OPMODE_DISABLED;
	else {
		FUNC11("patrol: Invalid command %s", av[1]);
		return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC10("mfi_open");
		return (error);
	}

	error = FUNC5(fd, &prop);
	if (error) {
		FUNC1(fd);
		return (error);
	}
	prop.op_mode = op_mode;
	if (op_mode == MFI_PR_OPMODE_AUTO) {
		if (ac > 2)
			prop.exec_freq = exec_freq;
		if (ac > 3) {
			FUNC9(&now);
			FUNC3(fd, &at);
			if (at == 0) {
				FUNC1(fd);
				return (ENXIO);
			}
			prop.next_exec = at + next_exec;
			FUNC6("Starting next patrol read at %s",
			    FUNC0(now, at, prop.next_exec));
		}
	}
	if (FUNC2(fd, MFI_DCMD_PR_SET_PROPERTIES, &prop,
	    sizeof(prop), NULL, 0, NULL) < 0) {
		error = errno;
		FUNC10("Failed to set patrol read properties");
		FUNC1(fd);
		return (error);
	}

	FUNC1(fd);

	return (0);
}