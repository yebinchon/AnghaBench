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
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int
FUNC5(int fd)
{
	struct xucred xucred;
	socklen_t len;

	if (FUNC4() < 0)
		return (-1);

	if (FUNC3(fd) < 0)
		return (-1);

	len = sizeof(xucred);
	if (FUNC1(fd, 0, LOCAL_PEERCRED, &xucred, &len) < 0) {
		FUNC2("getsockopt(LOCAL_PEERCRED)");
		return (-1);
	}

	if (FUNC0(&xucred, len) < 0)
		return (-1);

	return (0);
}