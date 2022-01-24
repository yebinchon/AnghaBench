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
 int CORRECT_O_ACCMODE ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  testnum ; 

__attribute__((used)) static void
FUNC4(const char *path, int omode, const char *omodetext)
{
	int fd, flags1, flags2, flags3;

	fd = FUNC2(path, omode);
	if (fd == -1)
		FUNC3("not ok %d - open(\"%s\", %s) failed\n",
		    testnum++, path, omodetext);
	else
		FUNC3("ok %d - open(\"%s\", %s) succeeded\n",
		    testnum++, path, omodetext);
	flags1 = FUNC1(fd, F_GETFL);
	if (flags1 == -1)
		FUNC3("not ok %d - fcntl(F_GETFL) failed\n", testnum++);
	else if ((flags1 & CORRECT_O_ACCMODE) == omode)
		FUNC3("ok %d - fcntl(F_GETFL) gave correct result\n",
		    testnum++);
	else
		FUNC3("not ok %d - fcntl(F_GETFL) gave incorrect result "
		    "(%#x & %#x != %#x)\n",
		    testnum++, flags1, CORRECT_O_ACCMODE, omode);
	if (FUNC1(fd, F_SETFL, flags1) == -1)
		FUNC3("not ok %d - fcntl(F_SETFL) same flags failed\n",
		    testnum++);
	else
		FUNC3("ok %d - fcntl(F_SETFL) same flags succeeded\n",
		    testnum++);
	flags2 = FUNC1(fd, F_GETFL);
	if (flags2 == -1)
		FUNC3("not ok %d - fcntl(F_GETFL) failed\n", testnum++);
	else if (flags2 == flags1)
		FUNC3("ok %d - fcntl(F_GETFL) gave same result\n",
		    testnum++);
	else
		FUNC3("not ok %d - fcntl(F_SETFL) caused fcntl(F_GETFL) to "
		    "change from %#x to %#x\n",
		    testnum++, flags1, flags2);
	if (FUNC1(fd, F_SETFL, flags2 | O_NONBLOCK) == -1)
		FUNC3("not ok %d - fcntl(F_SETFL) O_NONBLOCK failed\n",
		    testnum++);
	else
		FUNC3("ok %d - fcntl(F_SETFL) O_NONBLOCK succeeded\n",
		    testnum++);
	flags3 = FUNC1(fd, F_GETFL);
	if (flags3 == -1)
		FUNC3("not ok %d - fcntl(F_GETFL) failed\n", testnum++);
	else if (flags3 == (flags2 | O_NONBLOCK))
		FUNC3("ok %d - fcntl(F_GETFL) gave expected result\n",
		    testnum++);
	else
		FUNC3("not ok %d - fcntl(F_SETFL) gave unexpected result "
		    "(%#x != %#x)\n",
		    testnum++, flags3, flags2 | O_NONBLOCK);
	(void)FUNC0(fd);
}