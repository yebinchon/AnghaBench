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
 int errno ; 
 int something_failed ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

void
FUNC2(const char *test, int error, int expected_error, int expected_errno)
{

	if (error == 0) {
		if (expected_error != 0) {
			something_failed = 1;
			FUNC1("%s: returned 0", test);
		}
	} else {
		if (expected_error == 0) {
			something_failed = 1;
			FUNC0("%s: returned (%d, %d)", test, error, errno);
		} else if (expected_errno != errno) {
			something_failed = 1;
			FUNC0("%s: returned (%d, %d)", test, error, errno);
		}
	}
}