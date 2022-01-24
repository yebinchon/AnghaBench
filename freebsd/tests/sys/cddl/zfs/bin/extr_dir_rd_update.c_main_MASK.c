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
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int O_RDONLY ; 
 int O_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* dirpath ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (char*,int) ; 
 int FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 size_t FUNC11 (char*) ; 

int
FUNC12(int argc, char **argv)
{
	char *cp1 = "";
	int i = 0;
	int ret = 0;
	int testdd = 0;
	pid_t pid;
	static const int op_num = 5;

	if (argc == 1) {
		(void) FUNC6("Usage: %s <mount point>\n", argv[0]);
		FUNC1(-1);
	}
	for (i = 0; i < 256; i++) {
		dirpath[i] = 0;
	}

	cp1 = argv[1];
	(void) FUNC10(&dirpath[0], (const char *)cp1);
	(void) FUNC9(&dirpath[FUNC11(dirpath)], "TMP_DIR");

	ret = FUNC4(dirpath, 0777);
	if (ret != 0) {
		if (errno != EEXIST) {
			(void) FUNC6(
			"%s: mkdir(<%s>, 0777) failed: errno (decimal)=%d\n",
				argv[0], dirpath, errno);
			FUNC1(-1);
		}
	}
	testdd = FUNC5(dirpath, O_RDONLY|O_SYNC);
	if (testdd < 0) {
		(void) FUNC6(
"%s: open(<%s>, O_RDONLY|O_SYNC) failed: errno (decimal)=%d\n",
			argv[0], dirpath, errno);
		FUNC1(-1);
	} else {
		(void) FUNC0(testdd);
	}
	pid = FUNC3();
	if (pid > 0) {
		int fd = FUNC5(dirpath, O_RDONLY|O_SYNC);
		char buf[16];
		int rdret;
		int j = 0;

		while (j < op_num) {
			(void) FUNC8(1);
			rdret = FUNC7(fd, buf, 16);
			if (rdret == -1) {
				(void) FUNC6("readdir failed");
			}
			j++;
		}
	} else if (pid == 0) {
		int fd = FUNC5(dirpath, O_RDONLY);
		int chownret;
		int k = 0;

		while (k < op_num) {
			(void) FUNC8(1);
			chownret = FUNC2(fd, 0, 0);
			if (chownret == -1) {
				(void) FUNC6("chown failed");
			}

			k++;
		}
	}

	return (0);
}