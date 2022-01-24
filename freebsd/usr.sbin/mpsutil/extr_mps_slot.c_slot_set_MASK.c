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
typedef  unsigned long U32 ;
typedef  long U16 ;

/* Variables and functions */
 int EINVAL ; 
 long UINT16_MAX ; 
 unsigned long UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int errno ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,long,long,unsigned long) ; 
 int /*<<< orphan*/  mps_unit ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 long FUNC5 (char*,char**,int /*<<< orphan*/ ) ; 
 unsigned long FUNC6 (char*,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 

__attribute__((used)) static int
FUNC9(int argc, char **argv)
{
	char *endptr;
	unsigned long ux;
	long x;
	int error;
	int fd;
	U32 status;
	U16 handle;
	U16 slot;

	if (argc != 5) {
		FUNC8("Incorrect number of arguments");
		return (EINVAL);
	}

	if (FUNC4(argv[1], "status") != 0) {
		FUNC8("Invalid argument '%s', expecting 'status'",
		    argv[1]);
		return (EINVAL);
	}

	errno = 0;
	x = FUNC5(argv[2], &endptr, 0);
	if (*endptr != '\0' || errno != 0 || x < 0 || x > UINT16_MAX) {
		FUNC8("Invalid enclosure handle argument '%s'", argv[2]);
		return (EINVAL);
	}
	handle = x;

	errno = 0;
	x = FUNC5(argv[3], &endptr, 0);
	if (*endptr != '\0' || errno != 0 || x < 0 || x > UINT16_MAX) {
		FUNC8("Invalid slot argument '%s'", argv[3]);
		return (EINVAL);
	}
	slot = x;

	errno = 0;
	ux = FUNC6(argv[4], &endptr, 0);
	if (*endptr != '\0' || errno != 0 || ux > UINT32_MAX) {
		FUNC8("Invalid status argument '%s'", argv[4]);
		return (EINVAL);
	}
	status = ux;

	fd = FUNC1(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC7("mps_open");
		return (error);
	}

	if (FUNC2(fd, handle, slot, status) != 0) {
		FUNC8("Failed to set status");
		FUNC0(fd);
		return (1);
	}

	FUNC0(fd);
	FUNC3("Successfully set slot status\n");
	return (0);
}