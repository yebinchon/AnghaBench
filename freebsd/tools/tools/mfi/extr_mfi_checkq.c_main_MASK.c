#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int q_length; int q_max; } ;
union mfi_statrequest {int ms_item; TYPE_1__ ms_qstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MFIIO_STATS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (union mfi_statrequest*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,union mfi_statrequest*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	union mfi_statrequest sr;
	int fd, retval, queue;

	if (argc != 2)
		FUNC7();

	fd = FUNC4("/dev/mfi0", O_RDWR);
	if (fd == -1) {
		FUNC5("couldn't open mfi0: %s\n", FUNC6(errno));
		return (-1);
	}

	queue = FUNC0(argv[1]);
	FUNC5("Getting stats for queue %d\n", queue);
	FUNC1(&sr, sizeof(union mfi_statrequest));
	sr.ms_item = queue;
	retval = FUNC3(fd, MFIIO_STATS, &sr);
	if (retval == -1) {
		FUNC5("error on ioctl: %s\n", FUNC6(errno));
		return (-1);
	}

	FUNC5("length= %d, max= %d\n",sr.ms_qstat.q_length, sr.ms_qstat.q_max);

	FUNC2(fd);
	return 0;
}