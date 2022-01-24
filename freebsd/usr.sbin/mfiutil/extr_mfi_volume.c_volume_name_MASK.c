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
struct mfi_ld_props {char* name; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,struct mfi_ld_props*) ; 
 scalar_t__ FUNC3 (int,struct mfi_ld_props*) ; 
 scalar_t__ FUNC4 (int,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int mfi_unit ; 
 char* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(int ac, char **av)
{
	struct mfi_ld_props props;
	int error, fd;
	uint8_t target_id;

	if (ac != 3) {
		FUNC11("name: volume and name required");
		return (EINVAL);
	}

	if (FUNC9(av[2]) >= sizeof(props.name)) {
		FUNC11("name: new name is too long");
		return (ENOSPC);
	}

	fd = FUNC5(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC10("mfi_open");
		return (error);
	}

	if (FUNC4(fd, av[1], &target_id) < 0) {
		error = errno;
		FUNC10("Invalid volume: %s", av[1]);
		FUNC1(fd);
		return (error);
	}

	if (FUNC2(fd, target_id, &props) < 0) {
		error = errno;
		FUNC10("Failed to fetch volume properties");
		FUNC1(fd);
		return (error);
	}

	FUNC7("mfi%u volume %s name changed from \"%s\" to \"%s\"\n", mfi_unit,
	    FUNC6(fd, target_id), props.name, av[2]);
	FUNC0(props.name, sizeof(props.name));
	FUNC8(props.name, av[2]);
	if (FUNC3(fd, &props) < 0) {
		error = errno;
		FUNC10("Failed to set volume properties");
		FUNC1(fd);
		return (error);
	}

	FUNC1(fd);

	return (0);
}