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
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*) ; 
 char* test ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void
FUNC5(void)
{
	int inflight, openfiles;
	int sv[2];

	/*
	 * Create a pair, close in one order.
	 */
	test = "twosome_nothing1";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC1(sv);
	FUNC0(sv[0], sv[1]);
	FUNC4(inflight, openfiles);

	/*
	 * Create a pair, close in the other order.
	 */
	test = "twosome_nothing2";
	FUNC2("%s\n", test);
	FUNC3(&inflight, &openfiles);
	FUNC1(sv);
	FUNC0(sv[0], sv[1]);
	FUNC4(inflight, openfiles);
}