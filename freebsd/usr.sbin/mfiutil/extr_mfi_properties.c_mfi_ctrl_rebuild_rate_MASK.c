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
struct mfi_ctrl_props {int rebuild_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int FUNC2 (int,struct mfi_ctrl_props*) ; 
 int FUNC3 (int,struct mfi_ctrl_props*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mfi_unit ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int
FUNC7(int ac, char **av)
{
	int error, fd;
	struct mfi_ctrl_props ctrl_props;

	if (ac > 2) {
		FUNC6("mfi_ctrl_set_rebuild_rate");
		return(-1);
	}
		
	fd = FUNC4(mfi_unit, O_RDWR);
	if (fd < 0) {
		error = errno;
		FUNC6("mfi_open");
		return (error);
	}

	error = FUNC2(fd, &ctrl_props);
	if ( error < 0) {
		error = errno;
		FUNC6("Failed to get controller properties");
		FUNC1(fd);
		return (error);
	}
	/*
	 * User requested a change to the rebuild rate
	 */
	if (ac > 1) {
		ctrl_props.rebuild_rate = FUNC0(av[ac - 1]);
		error = FUNC3(fd, &ctrl_props);
		if ( error < 0) {
			error = errno;
			FUNC6("Failed to set controller properties");
			FUNC1(fd);
			return (error);
		}

		error = FUNC2(fd, &ctrl_props);
		if ( error < 0) {
			error = errno;
			FUNC6("Failed to get controller properties");
			FUNC1(fd);
			return (error);
		}
	}
	FUNC5 ("controller rebuild rate: %%%u \n",
		ctrl_props.rebuild_rate);
	return (0);
}