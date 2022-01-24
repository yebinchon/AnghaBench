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
struct test {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EA_DATA ; 
 int /*<<< orphan*/  EA_SIZE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char*,char*) ; 
 int /*<<< orphan*/  fpath ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(int asroot, int injail, struct test *test)
{
	int fd;

	fd = FUNC3(fpath, O_RDWR);
	if (fd < 0)
		FUNC2(-1, "priv_vfs_clearsugid_write(%s, %s): open",
		    asroot ? "root" : "!root", injail ? "jail" : "!jail");
	if (FUNC4(fd, EA_DATA, EA_SIZE) < 0)
		FUNC2(-1, "priv_vfs_clearsugid_write(%s, %s): write",
		    asroot ? "root" : "!root", injail ? "jail" : "!jail");
	(void)FUNC0(fd);
	FUNC1("priv_vfs_clearsugid_write", asroot, injail);
}