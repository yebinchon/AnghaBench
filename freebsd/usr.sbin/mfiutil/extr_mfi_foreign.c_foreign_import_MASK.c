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
typedef  int /*<<< orphan*/  mbox ;
typedef  int /*<<< orphan*/  info ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MFI_DCMD_CFG_FOREIGN_IMPORT ; 
 int /*<<< orphan*/  MFI_DCMD_CFG_FOREIGN_SCAN ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int errno ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,struct mfi_foreign_scan_info*,int,int*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int mfi_unit ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(int ac, char **av)
{
	struct mfi_foreign_scan_info info;
	int ch, error, fd;
	uint8_t cfgidx;
	uint8_t mbox[4];

	if (ac > 2) {
		FUNC8("foreign preview: extra arguments");
                return (EINVAL);
	}

	fd = FUNC5(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC7("mfi_open");
		return (error);
	}

	if (FUNC4(fd, MFI_DCMD_CFG_FOREIGN_SCAN, &info,
	    sizeof(info), NULL, 0, NULL) < 0) {
		error = errno;
		FUNC7("Failed to scan foreign configuration");
		FUNC2(fd);
		return (error);
	}

	if (info.count == 0) {
		FUNC8("foreign import: no foreign configs found");
		FUNC2(fd);
		return (EINVAL);
	}

	if (ac == 1) {
		cfgidx = 0xff;
		FUNC6("Are you sure you wish to import ALL foreign "
		       "configurations on mfi%u? [y/N] ", mfi_unit);
	} else {
		/*
		 * While this is docmmented for MegaCli this failed with
		 * exit code 0x03 on the test controller which was a Supermicro
		 * SMC2108 with firmware 12.12.0-0095 which is a LSI 2108 based
		 * controller.
		 */
		cfgidx = FUNC0(av[1]);
		if (cfgidx >= info.count) {
			FUNC8("Invalid foreign config %d specified max is %d",
			      cfgidx, info.count - 1);
			FUNC2(fd);
			return (EINVAL);
		}
		FUNC6("Are you sure you wish to import the foreign "
		       "configuration %d on mfi%u? [y/N] ", cfgidx, mfi_unit);
	}

	ch = FUNC3();
	if (ch != 'y' && ch != 'Y') {
		FUNC6("\nAborting\n");
		FUNC2(fd);
		return (0);
	}

	FUNC1(mbox, sizeof(mbox));
	mbox[0] = cfgidx;
	if (FUNC4(fd, MFI_DCMD_CFG_FOREIGN_IMPORT, NULL, 0, mbox,
	    sizeof(mbox), NULL) < 0) {
		error = errno;
		FUNC7("Failed to import foreign configuration");
		FUNC2(fd);
		return (error);
	}

	if (ac == 1)
		FUNC6("mfi%d: All foreign configurations imported\n",
		       mfi_unit);
	else
		FUNC6("mfi%d: Foreign configuration %d imported\n", mfi_unit,
		       cfgidx);
	FUNC2(fd);
	return (0);
}