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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 char const* test ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 

__attribute__((used)) static void
FUNC7(const char *testname, int close_spare_after_send,
    int close_sva_after_send)
{
	int inflight, openfiles;
	int spare, sva[2], svb[2];

	FUNC3("%s\n", testname);
	test = testname;
	FUNC4(&inflight, &openfiles);
	FUNC0(&spare, sva, svb);

	/*
	 * Send spare over sva.
	 */
	FUNC5(sva[0], spare);
	if (close_spare_after_send)
		FUNC1(spare);

	/*
	 * Send sva over svb.
	 */
	FUNC5(svb[0], sva[0]);
	FUNC5(svb[0], sva[1]);
	if (close_sva_after_send)
		FUNC2(sva[0], sva[1]);

	FUNC2(svb[0], svb[1]);

	if (!close_sva_after_send)
		FUNC2(sva[0], sva[1]);
	if (!close_spare_after_send)
		FUNC1(spare);

	FUNC6(inflight, openfiles);
}