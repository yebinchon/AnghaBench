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
struct mfi_foreign_scan_info {int count; } ;
typedef  int /*<<< orphan*/  mfi_dcmd_t ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFI_DCMD_CFG_FOREIGN_SCAN ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct mfi_foreign_scan_info*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int
FUNC8(int ac, char **av, int diagnostic, mfi_dcmd_t display_cmd)
{
	struct mfi_foreign_scan_info info;
	uint8_t i;
	int error, fd;

	if (ac > 2) {
		FUNC7("foreign display: extra arguments");
                return (EINVAL);
	}

	fd = FUNC4(mfi_unit, O_RDONLY);
	if (fd < 0) {
		error = errno;
		FUNC6("mfi_open");
		return (error);
	}

	if (FUNC3(fd, MFI_DCMD_CFG_FOREIGN_SCAN, &info,
	    sizeof(info), NULL, 0, NULL) < 0) {
		error = errno;
		FUNC6("Failed to scan foreign configuration");
		FUNC1(fd);
		return (error);
	}

	if (info.count == 0) {
		FUNC7("foreign display: no foreign configs found");
		FUNC1(fd);
		return (EINVAL);
	}

	if (ac == 1) {
		for (i = 0; i < info.count; i++) {
			error = FUNC2(fd,
				display_cmd, i, diagnostic);
			if(error != 0) {
				FUNC1(fd);
				return (error);
			}
			if (i < info.count - 1)
				FUNC5("\n");
		}
	} else if (ac == 2) {
		error = FUNC2(fd,
			display_cmd, FUNC0(av[1]), diagnostic);
		if (error != 0) {
			FUNC1(fd);
			return (error);
		}
	}
	
	FUNC1(fd);
	return (0);
}