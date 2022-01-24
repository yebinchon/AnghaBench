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
typedef  int /*<<< orphan*/  tests ;
struct sendfile_test {int offset; int length; int file_size; int /*<<< orphan*/  hdr_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int const TEST_PAGES ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int,struct sendfile_test) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (size_t) ; 

__attribute__((used)) static void
FUNC13(void)
{
	int connect_socket;
	int status;
	int test_num;
	int test_count;
	int pid;
	size_t desired_file_size = 0;

	const int pagesize = FUNC4();

	struct sendfile_test tests[] = {
 		{ .hdr_length = 0, .offset = 0, .length = 1 },
		{ .hdr_length = 0, .offset = 0, .length = pagesize },
		{ .hdr_length = 0, .offset = 1, .length = 1 },
		{ .hdr_length = 0, .offset = 1, .length = pagesize },
		{ .hdr_length = 0, .offset = pagesize, .length = pagesize },
		{ .hdr_length = 0, .offset = 0, .length = 2*pagesize },
		{ .hdr_length = 0, .offset = 0, .length = 0 },
		{ .hdr_length = 0, .offset = pagesize, .length = 0 },
		{ .hdr_length = 0, .offset = 2*pagesize, .length = 0 },
		{ .hdr_length = 0, .offset = TEST_PAGES*pagesize, .length = 0 },
		{ .hdr_length = 0, .offset = 0, .length = pagesize,
		    .file_size = 1 }
	};

	test_count = sizeof(tests) / sizeof(tests[0]);
	FUNC7("1..%d\n", test_count);

	for (test_num = 1; test_num <= test_count; test_num++) {

		desired_file_size = tests[test_num - 1].file_size;
		if (desired_file_size == 0)
			desired_file_size = TEST_PAGES * pagesize;
		if (FUNC12(desired_file_size) != 0) {
			FUNC7("not ok %d\n", test_num);
			continue;
		}

		pid = FUNC3();
		if (pid == -1) {
			FUNC7("not ok %d\n", test_num);
			continue;
		}

		if (pid == 0)
			FUNC8();

		FUNC10(250000);

		if (FUNC6(&connect_socket) != 0) {
			FUNC7("not ok %d\n", test_num);
			FUNC5(pid, SIGALRM);
			FUNC2(connect_socket);
			continue;
		}

		if (FUNC9(connect_socket, tests[test_num-1]) != 0) {
			FUNC7("not ok %d\n", test_num);
			FUNC5(pid, SIGALRM);
			FUNC2(connect_socket);
			continue;
		}

		FUNC2(connect_socket);
		if (FUNC11(pid, &status, 0) == pid) {
			if (FUNC1(status) && FUNC0(status) == 0)
				FUNC7("%s %d\n", "ok", test_num);
			else
				FUNC7("%s %d\n", "not ok", test_num);
		}
		else {
			FUNC7("not ok %d\n", test_num);
		}
	}
}