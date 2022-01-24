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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDWR ; 
 int errno ; 
 int FUNC0 (int,unsigned long,void*) ; 
 char* nexus ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(unsigned long cmd, void *data, const char *cmdstr)
{
	static int fd = -1;
	int rc = 0;

	if (fd == -1) {
		char buf[64];

		FUNC2(buf, sizeof(buf), "/dev/%s", nexus);
		if ((fd = FUNC1(buf, O_RDWR)) < 0) {
			FUNC3("open(%s)", nexus);
			rc = errno;
			return (rc);
		}
	}

	rc = FUNC0(fd, cmd, data);
	if (rc < 0) {
		FUNC3("%s", cmdstr);
		rc = errno;
	}

	return (rc);
}