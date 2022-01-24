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
 int FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  test ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(int before_inflight, int before_openfiles)
{
	int after_inflight, after_openfiles;

	FUNC2();
	after_inflight = FUNC0();
	if (after_inflight != before_inflight)
		FUNC3("%s: before inflight: %d, after inflight: %d",
		    test, before_inflight, after_inflight);

	after_openfiles = FUNC1();
	if (after_openfiles != before_openfiles)
		FUNC3("%s: before: %d, after: %d", test, before_openfiles,
		    after_openfiles);
}