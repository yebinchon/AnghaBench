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
 int /*<<< orphan*/  CRIOGET ; 
 int /*<<< orphan*/  F_SETFD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int fd;

	if (FUNC3(FUNC0(), CRIOGET, &fd) == -1)
		FUNC1(1, "ioctl(CRIOGET)");
	if (FUNC2(fd, F_SETFD, 1) == -1)
		FUNC1(1, "fcntl(F_SETFD) (crget)");
	return fd;
}