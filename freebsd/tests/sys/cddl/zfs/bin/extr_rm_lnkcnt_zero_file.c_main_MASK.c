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
struct stat {int st_nlink; } ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int O_APPEND ; 
 int O_CREAT ; 
 int O_RDWR ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  cleaner ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* filebase ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  mover ; 
 int FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  writer ; 

int
FUNC9(int argc, char **argv)
{
	int fd;
	pthread_t tid;

	if (argc == 1) {
		(void) FUNC4("Usage: %s <filebase>\n", argv[0]);
		FUNC0(-1);
	}

	filebase = argv[1];
	fd = FUNC2(filebase, O_APPEND | O_RDWR | O_CREAT, 0644);
	if (fd < 0) {
		FUNC3("creating test file");
		FUNC0(-1);
	}

	if (FUNC6(4)) {	/* 3 threads + main */
		FUNC1(stderr, "failed to set concurrency\n");
		FUNC0(-1);
	}
	(void) FUNC5(&tid, NULL, mover, NULL);
	(void) FUNC5(&tid, NULL, cleaner, NULL);
	(void) FUNC5(&tid, NULL, writer, (void *) &fd);

	while (TRUE) {
		int ret;
		struct stat st;

		ret = FUNC8(filebase, &st);
		if (ret == 0 && (st.st_nlink > 2 || st.st_nlink < 1)) {
			(void) FUNC4("st.st_nlink = %d, exiting\n", \
			    (int)st.st_nlink);
			FUNC0(0);
		}
		(void) FUNC7(1);
	}

	return (0);
}