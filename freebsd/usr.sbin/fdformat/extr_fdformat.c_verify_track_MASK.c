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

/* Variables and functions */
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int FDOPT_NORETRY ; 
 int /*<<< orphan*/  FD_GOPTS ; 
 int /*<<< orphan*/  FD_SOPTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int,long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 
 char* FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(int fd, int track, int tracksize)
{
	static char *buf;
	static int bufsz;
	int fdopts = -1, ofdopts, rv = 0;

	if (FUNC1(fd, FD_GOPTS, &fdopts) < 0)
		FUNC5("warning: ioctl(FD_GOPTS)");
	else {
		ofdopts = fdopts;
		fdopts |= FDOPT_NORETRY;
		(void)FUNC1(fd, FD_SOPTS, &fdopts);
	}

	if (bufsz < tracksize)
		buf = FUNC4(buf, bufsz = tracksize);
	if (buf == NULL)
		FUNC0(EX_UNAVAILABLE, "out of memory");
	if (FUNC2 (fd, (long) track * tracksize, 0) < 0)
		rv = -1;
	/* try twice reading it, without using the normal retrier */
	else if (FUNC3 (fd, buf, tracksize) != tracksize
		 && FUNC3 (fd, buf, tracksize) != tracksize)
		rv = -1;
	if (fdopts != -1)
		(void)FUNC1(fd, FD_SOPTS, &ofdopts);
	return (rv);
}