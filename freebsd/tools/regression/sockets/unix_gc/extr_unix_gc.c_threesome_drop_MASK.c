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
 int /*<<< orphan*/  FUNC0 (int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int inflight, openfiles;
	int s, sv[2];

	/*
	 * threesome_drop1: close sent send receive
	 */
	test = "threesome_drop1";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC4(sv[0], s);
	FUNC1(s, sv[0], sv[1]);
	FUNC5(inflight, openfiles);

	/*
	 * threesome_drop2: close sent receive send
	 */
	test = "threesome_drop2";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC4(sv[0], s);
	FUNC1(s, sv[1], sv[0]);
	FUNC5(inflight, openfiles);

	/*
	 * threesome_drop3: close receive sent send
	 */
	test = "threesome_drop3";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC4(sv[0], s);
	FUNC1(sv[1], s, sv[0]);
	FUNC5(inflight, openfiles);

	/*
	 * threesome_drop4: close receive send sent
	 */
	test = "threesome_drop4";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC4(sv[0], s);
	FUNC1(sv[1], sv[0], s);
	FUNC5(inflight, openfiles);

	/*
	 * threesome_drop5: close send receive sent
	 */
	test = "threesome_drop5";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC4(sv[0], s);
	FUNC1(sv[0], sv[1], s);
	FUNC5(inflight, openfiles);

	/*
	 * threesome_drop6: close send sent receive
	 */
	test = "threesome_drop6";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&s, sv);
	FUNC1(sv[0], s, sv[1]);
	FUNC5(inflight, openfiles);
}