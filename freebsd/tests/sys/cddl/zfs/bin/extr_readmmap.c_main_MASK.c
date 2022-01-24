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
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  MS_SYNC ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int O_TRUNC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 char* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,size_t) ; 
 int FUNC8 (char*,int,int) ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,size_t,...) ; 
 size_t FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int,char*,size_t) ; 

int
FUNC17(int argc, char **argv)
{
	char *filename = "badfile";
	size_t size = 4395;
	size_t idx = 0;
	char *buf = NULL;
	char *map = NULL;
	int fd = -1, bytes, retval = 0;
	unsigned seed;

	if (argc < 2 || optind == argc) {
		(void) FUNC3(stderr,
		    "usage: %s <file name>\n", argv[0]);
		FUNC2(1);
	}

	if ((buf = FUNC0(1, size)) == NULL) {
		FUNC9("calloc");
		FUNC2(1);
	}

	filename = argv[optind];

	(void) FUNC13(filename);

	fd = FUNC8(filename, O_RDWR|O_CREAT|O_TRUNC, 0666);
	if (fd == -1) {
		FUNC9("open to create");
		retval = 1;
		goto end;
	}

	bytes = FUNC16(fd, buf, size);
	if (bytes != size) {
		(void) FUNC11("short write: %d != %ud\n", bytes, size);
		retval = 1;
		goto end;
	}

	map = FUNC5(0, size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, 0);
	if (map == MAP_FAILED) {
		FUNC9("mmap");
		retval = 1;
		goto end;
	}
	seed = FUNC15(NULL);
	FUNC14(seed);

	idx = FUNC12() % size;
	map[idx] = 1;

	if (FUNC6(map, size, MS_SYNC) != 0) {
		FUNC9("msync");
		retval = 1;
		goto end;
	}

	if (FUNC7(map, size) != 0) {
		FUNC9("munmap");
		retval = 1;
		goto end;
	}

	bytes = FUNC10(fd, buf, size, 0);
	if (bytes != size) {
		(void) FUNC11("short read: %d != %ud\n", bytes, size);
		retval = 1;
		goto end;
	}

	if (buf[idx] != 1) {
		(void) FUNC11(
		    "bad data from read!  got buf[%ud]=%d, expected 1\n",
		    idx, buf[idx]);
		retval = 1;
		goto end;
	}

	(void) FUNC11("good data from read: buf[%ud]=1\n", idx);
end:
	if (fd != -1) {
		(void) FUNC1(fd);
	}
	if (buf != NULL) {
		FUNC4(buf);
	}

	return (retval);
}