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
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 char* MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  PROT_READ ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (char) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int) ; 
 int FUNC8 (char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC9(const char *path, char expected_value)
{
	int fd;
	int pagesize;
	char *page;

	FUNC0(0 < (pagesize = FUNC4()));

	fd = FUNC8(path, O_RDONLY, 0777);
	if (fd < 0)
		FUNC2("shm_open failed in verify_object; errno=%d, path=%s",
		    errno, path);

	page = FUNC6(0, pagesize, PROT_READ, MAP_SHARED, fd, 0);
	if (page == MAP_FAILED)
		FUNC2("mmap(1)");
	if (page[0] != expected_value)
		FUNC2("Renamed object has incorrect value; has"
		    "%d (0x%x, '%c'), expected %d (0x%x, '%c')\n",
		    page[0], page[0], FUNC5(page[0]) ? page[0] : ' ',
		    expected_value, expected_value,
		    FUNC5(expected_value) ? expected_value : ' ');
	FUNC1(FUNC7(page, pagesize) == 0, "munmap failed; errno=%d",
	    errno);
	FUNC3(fd);
}