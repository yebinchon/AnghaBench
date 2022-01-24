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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int BLOCKSIZE ; 
 int /*<<< orphan*/  BLOCKS_FILENAME ; 
 scalar_t__ ENOSPC ; 
 int NUMTRIES ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,scalar_t__) ; 
 scalar_t__ FUNC8 (int,char*,int) ; 

__attribute__((used)) static void
FUNC9(void)
{
	char block[BLOCKSIZE];
	ssize_t len;
	int fd, i;

	fd = FUNC4(BLOCKS_FILENAME, O_CREAT | O_TRUNC | O_RDWR, 0600);
	if (fd < 0)
		FUNC2(-1, "fill_blocks: open(%s)", BLOCKS_FILENAME);

	/*
	 * First step: fill the disk device.  Keep extending the file until
	 * we hit our first error, and hope it is ENOSPC.
	 */
	FUNC0(block, BLOCKSIZE);
	errno = 0;
	while (1) {
		len = FUNC8(fd, block, BLOCKSIZE);
		if (len < 0)
			break;
		if (len != BLOCKSIZE) {
			FUNC7("fill_blocks: write(%d) returned %zd",
			    BLOCKSIZE, len);
			FUNC1(fd);
			(void)FUNC5(BLOCKS_FILENAME);
			FUNC3(-1);
		}

	}
	if (errno != ENOSPC) {
		FUNC6("fill_blocks: write");
		FUNC1(fd);
		(void)FUNC5(BLOCKS_FILENAME);
		FUNC3(-1);
	}

	/*
	 * Second step: generate NUMTRIES instances of the error by retrying
	 * the write.
	 */
	for (i = 0; i < NUMTRIES; i++) {
		len = FUNC8(fd, block, BLOCKSIZE);
		if (len < 0 && errno != ENOSPC) {
			FUNC6("fill_blocks: write after ENOSPC");
			FUNC1(fd);
			(void)FUNC5(BLOCKS_FILENAME);
			FUNC3(-1);
		}
	}

	FUNC1(fd);
	(void)FUNC5(BLOCKS_FILENAME);
}