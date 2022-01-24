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
 int /*<<< orphan*/  FUNC0 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void
FUNC6(void)
{
	int inflight, openfiles;
	int spare, sva[2], svb[2];

	test = "complex_cycles";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC0(&spare, sva, svb);
	FUNC4(sva[0], svb[0]);
	FUNC4(sva[0], svb[1]);
	FUNC4(svb[0], sva[0]);
	FUNC4(svb[0], sva[1]);
	FUNC4(svb[0], spare);
	FUNC4(sva[0], spare);
	FUNC1(spare, sva[0], sva[1], svb[0], svb[1]);
	FUNC5(inflight, openfiles);
}