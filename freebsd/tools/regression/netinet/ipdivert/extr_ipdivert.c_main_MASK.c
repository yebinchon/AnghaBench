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
 int /*<<< orphan*/  EADDRINUSE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(int argc, char *argv[])
{
	const char *test;
	int s1, s2;

	/*
	 * First test: create and close an IP divert socket.
	 */
	test = "create_close";
	s1 = FUNC2(test);
	FUNC1(test, s1);
	FUNC3(test);

	/*
	 * Second test: create, bind, and close an IP divert socket.
	 */
	test = "create_bind_close";
	s1 = FUNC2(test);
	FUNC0(test, s1, 1000, 0);
	FUNC1(test, s1);
	FUNC3(test);

	/*
	 * Third test: create two sockets, bind to different ports, and close.
	 * This should succeed due to non-conflict on the port numbers.
	 */
	test = "create2_bind2_close2";
	s1 = FUNC2(test);
	s2 = FUNC2(test);
	FUNC0(test, s1, 1000, 0);
	FUNC0(test, s2, 1001, 0);
	FUNC1(test, s1);
	FUNC1(test, s2);
	FUNC3(test);

	/*
	 * Fourth test: create two sockets, bind to the *same* port, and
	 * close.  This should fail due to conflicting port numbers.
	 */
	test = "create2_bind2_conflict_close2";
	s1 = FUNC2(test);
	s2 = FUNC2(test);
	FUNC0(test, s1, 1000, 0);
	FUNC0(test, s2, 1000, EADDRINUSE);
	FUNC1(test, s1);
	FUNC1(test, s2);
	FUNC3(test);

	return (0);
}