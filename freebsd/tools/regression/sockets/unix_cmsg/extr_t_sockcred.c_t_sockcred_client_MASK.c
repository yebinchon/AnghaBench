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
struct msghdr {int dummy; } ;
struct iovec {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC1 (struct msghdr*,struct iovec*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int
FUNC4(int type, int fd)
{
	struct msghdr msghdr;
	struct iovec iov[1];
	int rv;

	if (FUNC3() < 0)
		return (-2);

	rv = -2;

	FUNC1(&msghdr, iov, NULL, 0, 0, 0);

	if (FUNC2(fd) < 0)
		goto done;

	if (type == 2)
		if (FUNC3() < 0)
			goto done;

	if (FUNC0(fd, &msghdr) < 0)
		goto done;

	rv = 0;
done:
	return (rv);
}