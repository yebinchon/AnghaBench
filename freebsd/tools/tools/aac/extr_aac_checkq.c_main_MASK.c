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
union aac_statrequest {int as_item; TYPE_1__ as_qstat; } ;

/* Variables and functions */
 int /*<<< orphan*/  AACIO_STATS ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (union aac_statrequest*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 (int,int /*<<< orphan*/ ,union aac_statrequest*) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

int
FUNC8(int argc, char **argv)
{
	union aac_statrequest sr;
	int fd, retval, queue;

	if (argc != 2)
		FUNC7();

	fd = FUNC4("/dev/aac0", O_RDWR);
	if (fd == -1) {
		FUNC5("couldn't open aac0: %s\n", FUNC6(errno));
		return (-1);
	}

	queue = FUNC0(argv[1]);
	FUNC5("Getting stats for queue %d\n", queue);
	FUNC1(&sr, sizeof(union aac_statrequest));
	sr.as_item = queue;
	retval = FUNC3(fd, AACIO_STATS, &sr);
	if (retval == -1) {
		FUNC5("error on ioctl: %s\n", FUNC6(errno));
		return (-1);
	}

	FUNC5("length= %d, max= %d\n",sr.as_qstat.q_length, sr.as_qstat.q_max);

	FUNC2(fd);
	return 0;
}