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
struct fd {char* member_0; int member_1; int f_fd; int /*<<< orphan*/  f_name; } ;
typedef  int cap_rights_t ;
typedef  int /*<<< orphan*/  all ;

/* Variables and functions */
 int CAP_FCNTL ; 
 int CAP_READ ; 
 int /*<<< orphan*/  FUNC0 (int (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ),int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  O_RDWR ; 
 int PASSED ; 
 int /*<<< orphan*/  PF_LOCAL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  SHM_ANON ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int FUNC4 () ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(void)
{
	int success = PASSED;
	cap_rights_t rights = CAP_READ | CAP_FCNTL;

	/*
	 * Open some files of different types, and wrap them in capabilities.
	 */
	struct fd files[] = {
		{ "file",         FUNC7("/etc/passwd", O_RDONLY) },
		{ "socket",       FUNC9(PF_LOCAL, SOCK_STREAM, 0) },
		{ "SHM",          FUNC8(SHM_ANON, O_RDWR, 0600) },
	};
	FUNC3(files[0].f_fd);
	FUNC3(files[1].f_fd);
	FUNC3(files[2].f_fd);

	struct fd caps[] = {
		{ "file cap",     FUNC5(files[0].f_fd, rights) },
		{ "socket cap",   FUNC5(files[1].f_fd, rights) },
		{ "SHM cap",      FUNC5(files[2].f_fd, rights) },
	};
	FUNC3(caps[0].f_fd);
	FUNC3(caps[1].f_fd);
	FUNC3(caps[2].f_fd);

	struct fd all[] = {
		files[0], caps[0],
		files[1], caps[1],
		files[2], caps[2],
	};
	const size_t len = sizeof(all) / sizeof(struct fd);

	FUNC3(FUNC4());

	/*
	 * Ensure that we can fcntl() all the files that we opened above.
	 */
	for (size_t i = 0; i < len; i++)
	{
		struct fd f = all[i];
		int cap;

		FUNC1(fcntl, f.f_fd, F_GETFL, 0);
		FUNC3(cap = FUNC5(f.f_fd, CAP_READ));
		if (FUNC6(f.f_fd, F_GETFL, 0) == -1)
			FUNC2("Error calling fcntl('%s', F_GETFL)", f.f_name);
		else
			FUNC0(fcntl, cap, F_GETFL, 0);
	}

	return (success);
}