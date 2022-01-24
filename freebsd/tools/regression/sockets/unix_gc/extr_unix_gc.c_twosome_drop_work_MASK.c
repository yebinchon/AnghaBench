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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 char const* test ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(const char *testname, int sendvia, int tosend, int closefirst)
{
	int inflight, openfiles;
	int sv[2];

	FUNC2("%s\n", testname);
	test = testname;
	FUNC3(&inflight, &openfiles);
	FUNC1(sv);
	FUNC4(sv[sendvia], sv[tosend]);
	if (closefirst == 0)
		FUNC0(sv[0], sv[1]);
	else
		FUNC0(sv[1], sv[0]);
	FUNC5(inflight, openfiles);
}