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
typedef  unsigned int off_t ;

/* Variables and functions */
 char* MAP_FAILED ; 
 int MAP_FILE ; 
 int MAP_SHARED ; 
 int /*<<< orphan*/  MS_SYNC ; 
 unsigned int OP_MAPWRITE ; 
 unsigned int OP_SKIPPED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,char*,unsigned int) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  fd ; 
 unsigned int file_size ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,unsigned int,unsigned int) ; 
 scalar_t__ good_buf ; 
 scalar_t__ lite ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ mapped_msync ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,char,unsigned int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ,unsigned int) ; 
 int monitorend ; 
 int monitorstart ; 
 scalar_t__ FUNC8 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (char*,unsigned int) ; 
 int /*<<< orphan*/  original_buf ; 
 unsigned int page_mask ; 
 int progressinterval ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  quiet ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int simulatedopcount ; 
 int testcalls ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 unsigned int writebdy ; 

void
FUNC14(unsigned offset, unsigned size)
{
	unsigned pg_offset;
	unsigned map_size;
	off_t    cur_filesize;
	char    *p;

	offset -= offset % writebdy;
	if (size == 0) {
		if (!quiet && testcalls > simulatedopcount)
			FUNC10("skipping zero size write\n");
		FUNC4(OP_SKIPPED, OP_MAPWRITE, offset, size);
		return;
	}
	cur_filesize = file_size;

	FUNC4(OP_MAPWRITE, offset, size, 0);

	FUNC3(original_buf, good_buf, offset, size);
	if (file_size < offset + size) {
		if (file_size < offset)
			FUNC6(good_buf + file_size, '\0', offset - file_size);
		file_size = offset + size;
		if (lite) {
			FUNC13("Lite file size bug in fsx!");
			FUNC12(200);
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
		FUNC10("%lu mapwrite\t0x%x thru\t0x%x\t(0x%x bytes)\n", testcalls,
		    offset, offset + size - 1, size);

	if (file_size > cur_filesize) {
		if (FUNC2(fd, file_size) == -1) {
			FUNC11("domapwrite: ftruncate");
			FUNC1(201);
		}
	}
	pg_offset = offset & page_mask;
	map_size  = pg_offset + size;

	if ((p = (char *)FUNC7(0, map_size, PROT_READ | PROT_WRITE,
			      MAP_FILE | MAP_SHARED, fd,
			      (off_t)(offset - pg_offset))) == MAP_FAILED) {
		FUNC11("domapwrite: mmap");
		FUNC12(202);
	}
	FUNC5(p + pg_offset, good_buf + offset, size);
	if (mapped_msync && FUNC8(p, map_size, MS_SYNC) != 0) {
		FUNC11("domapwrite: msync");
		FUNC12(203);
	}

	FUNC0("Write", offset, p, size);

	if (FUNC9(p, map_size) != 0) {
		FUNC11("domapwrite: munmap");
		FUNC12(204);
	}
}