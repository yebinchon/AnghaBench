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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CRIOGET ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(void)
{
	int dc_fd, fd;

	dc_fd = FUNC3("/dev/crypto", O_RDWR);

	/*
	 * Why do we do this dance instead of just operating on /dev/crypto
	 * directly?  I have no idea.
	 */
	FUNC0(dc_fd >= 0);
	FUNC0(FUNC2(dc_fd, CRIOGET, &fd) != -1);
	FUNC1(dc_fd);
	return (fd);
}