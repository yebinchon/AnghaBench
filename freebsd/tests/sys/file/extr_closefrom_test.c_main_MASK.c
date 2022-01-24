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
struct shared_info {char* tag; int message; scalar_t__ failed; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EBADF ; 
 int MAP_ANON ; 
 struct shared_info* MAP_FAILED ; 
 int MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct shared_info*,char*,char*,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct shared_info*,char*) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 () ; 
 struct shared_info* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 

int
FUNC15(void)
{
	struct shared_info *info;
	pid_t pid;
	int fd, i, start;

	FUNC13("1..15\n");

	/* We better start up with fd's 0, 1, and 2 open. */
	start = FUNC4();
	if (start == -1)
		FUNC6("open", "bad descriptor %d", start);
	FUNC12("open");

	/* Make sure highest_fd() works. */
	fd = FUNC10();
	if (start != fd)
		FUNC6("highest_fd", "bad descriptor %d != %d", start, fd);
	FUNC12("highest_fd");

	/* Try to use closefrom() for just closing fd 3. */
	FUNC2(start + 1);
	fd = FUNC10();
	if (fd != start)
		FUNC6("closefrom", "highest fd %d", fd);
	FUNC12("closefrom");

	/* Eat up 16 descriptors. */
	for (i = 0; i < 16; i++)
		(void)FUNC4();
	fd = FUNC10();
	if (fd != start + 16)
		FUNC6("open 16", "highest fd %d", fd);
	FUNC12("open 16");

	/* Close half of them. */
	FUNC2(11);
	fd = FUNC10();
	if (fd != 10)
		FUNC6("closefrom", "highest fd %d", fd);
	FUNC12("closefrom");

	/* Explicitly close descriptors 6 and 8 to create holes. */
	if (FUNC1(6) < 0 || FUNC1(8) < 0)
		FUNC7("close2 ");
	FUNC12("close 2");

	/* Verify that close on 6 and 8 fails with EBADF. */
	if (FUNC1(6) == 0)
		FUNC6("close(6)", "did not fail");
	if (errno != EBADF)
		FUNC7("close(6)");
	FUNC12("close(6)");
	if (FUNC1(8) == 0)
		FUNC6("close(8)", "did not fail");
	if (errno != EBADF)
		FUNC7("close(8)");
	FUNC12("close(8)");

	/* Close from 4 on. */
	FUNC2(4);
	fd = FUNC10();
	if (fd != 3)
		FUNC6("closefrom", "highest fd %d", fd);
	FUNC12("closefrom");

	/* Allocate a small SHM region for IPC with our child. */
	info = FUNC11(NULL, FUNC9(), PROT_READ | PROT_WRITE, MAP_ANON |
	    MAP_SHARED, -1, 0);
	if (info == MAP_FAILED)
		FUNC7("mmap");
	FUNC12("mmap");

	/* Fork a child process to test closefrom(0). */
	pid = FUNC8();
	if (pid < 0)
		FUNC7("fork");
	if (pid == 0) {
		/* Child. */
		FUNC2(0);
		fd = FUNC10();
		if (fd >= 0)
			FUNC0(info, "closefrom(0)", "highest fd %d", fd);
		FUNC3(info, "closefrom(0)");
	}
	if (FUNC14(NULL) < 0)
		FUNC7("wait");
	if (info->failed)
		FUNC6(info->tag, "%s", info->message);
	FUNC12(info->tag);

	/* Fork a child process to test closefrom(-1). */
	pid = FUNC8();
	if (pid < 0)
		FUNC7("fork");
	if (pid == 0) {
		/* Child. */
		FUNC2(-1);
		fd = FUNC10();
		if (fd >= 0)
			FUNC0(info, "closefrom(-1)", "highest fd %d", fd);
		FUNC3(info, "closefrom(-1)");
	}
	if (FUNC14(NULL) < 0)
		FUNC7("wait");
	if (info->failed)
		FUNC6(info->tag, "%s", info->message);
	FUNC12(info->tag);

	/* Dup stdout to 6. */
	if (FUNC5(1, 6) < 0)
		FUNC7("dup2");
	fd = FUNC10();
	if (fd != 6)
		FUNC6("dup2", "highest fd %d", fd);
	FUNC12("dup2");

	/* Do a closefrom() starting in a hole. */
	FUNC2(4);
	fd = FUNC10();
	if (fd != 3)
		FUNC6("closefrom", "highest fd %d", fd);
	FUNC12("closefrom");

	/* Do a closefrom() beyond our highest open fd. */
	FUNC2(32);
	fd = FUNC10();
	if (fd != 3)
		FUNC6("closefrom", "highest fd %d", fd);
	FUNC12("closefrom");

	return (0);
}