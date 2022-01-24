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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int errno ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(const char *path, int flags, mode_t mode, int error)
{
	int fd;

	fd = FUNC1(path, flags, mode);
	FUNC0(fd == -1, "shm_open didn't fail");
	FUNC0(error == errno,
	    "shm_open didn't fail with expected errno; errno=%d; expected "
	    "errno=%d", errno, error);
}