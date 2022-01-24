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
typedef  int /*<<< orphan*/  xucred ;
struct xucred {int dummy; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOCAL_PEERCRED ; 
 scalar_t__ FUNC0 (struct xucred*,int) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct xucred*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static int
FUNC6(int fd1)
{
	struct xucred xucred;
	socklen_t len;
	int fd2, rv;

	if (FUNC5() < 0)
		return (-2);

	fd2 = FUNC3(fd1);
	if (fd2 < 0)
		return (-2);

	len = sizeof(xucred);
	if (FUNC1(fd2, 0, LOCAL_PEERCRED, &xucred, &len) < 0) {
		FUNC2("getsockopt(LOCAL_PEERCRED)");
		rv = -2;
		goto done;
	}

	if (FUNC0(&xucred, len) < 0) {
		rv = -1;
		goto done;
	}

	rv = 0;
done:
	if (FUNC4(fd2) < 0)
		rv = -2;
	return (rv);
}