#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  ld; } ;
struct TYPE_4__ {TYPE_1__ properties; } ;
struct mfi_ld_info {TYPE_2__ ld_config; } ;
typedef  int /*<<< orphan*/  mbox ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MFI_DCMD_LD_DELETE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,struct mfi_ld_info*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mfi_unit ; 
 scalar_t__ FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 (int,char**) ; 
 scalar_t__ FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(int ac, char **av)
{
	struct mfi_ld_info info;
	int error, fd;
	uint8_t target_id, mbox[4];

	/*
	 * Backwards compat.  Map 'delete volume' to 'delete' and
	 * 'delete spare' to 'remove'.
	 */
	if (ac > 1) {
		if (FUNC10(av[1], "volume") == 0) {
			av++;
			ac--;
		} else if (FUNC10(av[1], "spare") == 0) {
			av++;
			ac--;
			return (FUNC9(ac, av));
		}
	}

	if (ac != 2) {
		FUNC12("delete volume: volume required");
		return (EINVAL);
	}

	fd = FUNC5(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC11("mfi_open");
		return (error);
	}

	if (!FUNC6()) {
		FUNC12("The current mfi(4) driver does not support "
		    "configuration changes.");
		FUNC0(fd);
		return (EOPNOTSUPP);
	}

	if (FUNC4(fd, av[1], &target_id) < 0) {
		error = errno;
		FUNC11("Invalid volume %s", av[1]);
		FUNC0(fd);
		return (error);
	}

	if (FUNC3(fd, target_id, &info, NULL) < 0) {
		error = errno;
		FUNC11("Failed to get info for volume %d", target_id);
		FUNC0(fd);
		return (error);
	}

	if (FUNC7(fd, target_id)) {
		FUNC12("Volume %s is busy and cannot be deleted",
		    FUNC8(fd, target_id));
		FUNC0(fd);
		return (EBUSY);
	}

	FUNC1(mbox, &info.ld_config.properties.ld);
	if (FUNC2(fd, MFI_DCMD_LD_DELETE, NULL, 0, mbox,
	    sizeof(mbox), NULL) < 0) {
		error = errno;
		FUNC11("Failed to delete volume");
		FUNC0(fd);
		return (error);
	}

	FUNC0(fd);

	return (0);
}