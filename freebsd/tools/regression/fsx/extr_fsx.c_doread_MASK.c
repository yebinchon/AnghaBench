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
typedef  scalar_t__ off_t ;

/* Variables and functions */
 unsigned int OP_READ ; 
 unsigned int OP_SKIPPED ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fd ; 
 unsigned int file_size ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int monitorend ; 
 int monitorstart ; 
 int progressinterval ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int readbdy ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int simulatedopcount ; 
 int /*<<< orphan*/  temp_buf ; 
 int testcalls ; 

void
FUNC7(unsigned offset, unsigned size)
{
	off_t ret;
	unsigned iret;

	offset -= offset % readbdy;
	if (size == 0) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC3("skipping zero size read\n");
		FUNC1(OP_SKIPPED, OP_READ, offset, size);
		return;
	}
	if (size + offset > file_size) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC3("skipping seek/read past end of file\n");
		FUNC1(OP_SKIPPED, OP_READ, offset, size);
		return;
	}

	FUNC1(OP_READ, offset, size, 0);

	if (testcalls <= simulatedopcount)
		return;

	if (!quiet && ((progressinterval &&
			testcalls % progressinterval == 0) ||
		       (debug &&
			(monitorstart == -1 ||
			 (offset + size > monitorstart &&
			  (monitorend == -1 || offset <= monitorend))))))
		FUNC3("%lu read\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
		    offset, offset + size - 1, size);
	ret = FUNC2(fd, (off_t)offset, SEEK_SET);
	if (ret == (off_t)-1) {
		FUNC4("doread: lseek");
		FUNC6(140);
	}
	iret = FUNC5(fd, temp_buf, size);
	if (iret != size) {
		if (iret == -1)
			FUNC4("doread: read");
		else
			FUNC3("short read: 0x%x bytes instead of 0x%x\n",
			    iret, size);
		FUNC6(141);
	}
	FUNC0(offset, size);
}