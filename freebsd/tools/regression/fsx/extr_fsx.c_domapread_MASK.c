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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int MAP_FILE ; 
 int MAP_SHARED ; 
 unsigned int OP_MAPREAD ; 
 unsigned int OP_SKIPPED ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,char*,unsigned int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  fd ; 
 unsigned int file_size ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int monitorend ; 
 int monitorstart ; 
 scalar_t__ FUNC5 (char*,unsigned int) ; 
 unsigned int page_mask ; 
 int progressinterval ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 unsigned int readbdy ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int simulatedopcount ; 
 int /*<<< orphan*/  temp_buf ; 
 int testcalls ; 

void
FUNC9(unsigned offset, unsigned size)
{
	unsigned pg_offset;
	unsigned map_size;
	char    *p;

	offset -= offset % readbdy;
	if (size == 0) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC6("skipping zero size read\n");
		FUNC2(OP_SKIPPED, OP_MAPREAD, offset, size);
		return;
	}
	if (size + offset > file_size) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC6("skipping seek/read past end of file\n");
		FUNC2(OP_SKIPPED, OP_MAPREAD, offset, size);
		return;
	}

	FUNC2(OP_MAPREAD, offset, size, 0);

	if (testcalls <= simulatedopcount)
		return;

	if (!quiet && ((progressinterval &&
			testcalls % progressinterval == 0) ||
		       (debug &&
			(monitorstart == -1 ||
			 (offset + size > monitorstart &&
			  (monitorend == -1 || offset <= monitorend))))))
		FUNC6("%lu mapread\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
		    offset, offset + size - 1, size);

	pg_offset = offset & page_mask;
	map_size  = pg_offset + size;

	if ((p = (char *)FUNC4(0, map_size, PROT_READ, MAP_FILE | MAP_SHARED, fd,
			      (off_t)(offset - pg_offset))) == (char *)-1) {
		FUNC7("domapread: mmap");
		FUNC8(190);
	}
	FUNC3(temp_buf, p + pg_offset, size);

	FUNC1("Read", offset, p, size);

	if (FUNC5(p, map_size) != 0) {
		FUNC7("domapread: munmap");
		FUNC8(191);
	}

	FUNC0(offset, size);
}