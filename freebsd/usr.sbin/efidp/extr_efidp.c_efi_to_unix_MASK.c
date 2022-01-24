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
typedef  scalar_t__ efidp ;
typedef  int /*<<< orphan*/  dpbuf ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int MAXSIZE ; 
 size_t FUNC0 (char*,scalar_t__,int) ; 
 int FUNC1 (scalar_t__,char**,char**,char**) ; 
 int errno ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static void
FUNC6(void)
{
	char buffer[MAXSIZE];
	char dpbuf[MAXSIZE];
	efidp dp;
	size_t dplen;
	char *walker, *dev, *relpath, *abspath;
	int rv;

	dp = (efidp)dpbuf;
	while (FUNC2(buffer, sizeof(buffer), stdin)) {
		walker= FUNC4(buffer);
		dplen = FUNC0(walker, dp, sizeof(dpbuf));
		rv = FUNC1(dp, &dev, &relpath, &abspath);
		if (rv == 0)
			FUNC3("%s:%s %s\n", dev, relpath, abspath);
		else {
			errno = rv;
			FUNC5("Can't convert '%s' to unix", walker);
		}
	}
}