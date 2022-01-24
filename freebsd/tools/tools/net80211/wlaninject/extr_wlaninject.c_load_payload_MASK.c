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
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*) ; 
 int FUNC4 (int,void*,int) ; 

int FUNC5(char *fname, void *buf, int len)
{
	int fd;
	int rc;

	if ((fd = FUNC2(fname, O_RDONLY)) == -1)
		FUNC1(1, "open()");

	if ((rc = FUNC4(fd, buf, len)) == -1)
		FUNC1(1, "read()");

	FUNC0(fd);
	FUNC3("Read %d bytes from %s\n", rc, fname);
	return rc;
}