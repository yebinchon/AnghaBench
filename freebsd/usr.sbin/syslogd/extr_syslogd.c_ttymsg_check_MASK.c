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
struct stat {int st_mode; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  device ;

/* Variables and functions */
 int S_IWGRP ; 
 char* _PATH_DEV ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char*,char*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 char const* FUNC3 (struct iovec*,int,char*,int) ; 

__attribute__((used)) static const char *
FUNC4(struct iovec *iov, int iovcnt, char *line, int tmout)
{
	static char device[1024];
	static char errbuf[1024];
	struct stat sb;

	(void) FUNC0(device, sizeof(device), "%s%s", _PATH_DEV, line);

	if (FUNC1(device, &sb) < 0) {
		(void) FUNC0(errbuf, sizeof(errbuf),
		    "%s: %s", device, FUNC2(errno));
		return (errbuf);
	}
	if ((sb.st_mode & S_IWGRP) == 0)
		/* Messages disabled. */
		return (NULL);
	return FUNC3(iov, iovcnt, line, tmout);
}