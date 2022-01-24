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
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 scalar_t__ EEXIST ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC3 (int,int) ; 
 int FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,int) ; 
 int FUNC7 (char const*,int,int) ; 
 scalar_t__ FUNC8 (char const*) ; 
 char const* test_path ; 

__attribute__((used)) static int
FUNC9(const char *path, char value)
{
	char *page;
	int fd, pagesize;

	FUNC0(0 < (pagesize = FUNC4()));

	fd = FUNC7(path, O_CREAT|O_EXCL|O_RDWR, 0777);
	if (fd < 0 && errno == EEXIST) {
		if (FUNC8(test_path) < 0)
			FUNC2("shm_unlink");
		fd = FUNC7(test_path, O_CREAT | O_EXCL | O_RDWR, 0777);
	}
	if (fd < 0)
		FUNC2("shm_open failed; errno=%d", errno);
	if (FUNC3(fd, pagesize) < 0)
		FUNC2("ftruncate failed; errno=%d", errno);

	page = FUNC5(0, pagesize, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
	if (page == MAP_FAILED)
		FUNC2("mmap failed; errno=%d", errno);

	page[0] = value;
	FUNC1(FUNC6(page, pagesize) == 0, "munmap failed; errno=%d",
	    errno);

	return (fd);
}