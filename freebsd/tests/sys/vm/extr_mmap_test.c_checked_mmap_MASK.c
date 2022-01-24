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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* MAP_FAILED ; 
 int /*<<< orphan*/  errno ; 
 int FUNC3 () ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 

__attribute__((used)) static void
FUNC6(int prot, int flags, int fd, int error, const char *msg)
{
	void *p;
	int pagesize;

	FUNC2((pagesize = FUNC3()) > 0);
	p = FUNC4(NULL, pagesize, prot, flags, fd, 0);
	if (p == MAP_FAILED) {
		if (error == 0)
			FUNC1(0, "%s failed with errno %d", msg,
			    errno);
		else
			FUNC0(error, errno,
			    "%s failed with wrong errno %d (expected %d)", msg,
			    errno, error);
	} else {
		FUNC1(error == 0, "%s succeeded", msg);
		FUNC5(p, pagesize);
	}
}