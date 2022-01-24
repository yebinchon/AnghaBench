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
 unsigned int OP_SKIPPED ; 
 unsigned int OP_WRITE ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fd ; 
 unsigned int file_size ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ good_buf ; 
 scalar_t__ lite ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char,unsigned int) ; 
 int monitorend ; 
 int monitorstart ; 
 int /*<<< orphan*/  original_buf ; 
 int progressinterval ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int simulatedopcount ; 
 int testcalls ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 unsigned int FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 unsigned int writebdy ; 

void
FUNC9(unsigned offset, unsigned size)
{
	off_t ret;
	unsigned iret;

	offset -= offset % writebdy;
	if (size == 0) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC4("skipping zero size write\n");
		FUNC1(OP_SKIPPED, OP_WRITE, offset, size);
		return;
	}

	FUNC1(OP_WRITE, offset, size, file_size);

	FUNC0(original_buf, good_buf, offset, size);
	if (file_size < offset + size) {
		if (file_size < offset)
			FUNC3(good_buf + file_size, '\0', offset - file_size);
		file_size = offset + size;
		if (lite) {
			FUNC7("Lite file size bug in fsx!");
			FUNC6(149);
		}
	}

	if (testcalls <= simulatedopcount)
		return;

	if (!quiet && ((progressinterval &&
			testcalls % progressinterval == 0) ||
		       (debug &&
			(monitorstart == -1 ||
			 (offset + size > monitorstart &&
			  (monitorend == -1 || offset <= monitorend))))))
		FUNC4("%lu write\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
		    offset, offset + size - 1, size);
	ret = FUNC2(fd, (off_t)offset, SEEK_SET);
	if (ret == (off_t)-1) {
		FUNC5("dowrite: lseek");
		FUNC6(150);
	}
	iret = FUNC8(fd, good_buf + offset, size);
	if (iret != size) {
		if (iret == -1)
			FUNC5("dowrite: write");
		else
			FUNC4("short write: 0x%x bytes instead of 0x%x\n",
			    iret, size);
		FUNC6(151);
	}
}