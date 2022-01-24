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
struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive*) ; 
 scalar_t__ FUNC5 (struct archive*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct archive*) ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int
FUNC8(struct archive *a, struct archive_entry *e)
{
	ssize_t len;
	int error_count;

	error_count = 0;
	if (FUNC0(FUNC2(e)))
		return 0;

	FUNC7("    testing: %s\t", FUNC3(e));
	while ((len = FUNC5(a, buffer, sizeof buffer)) > 0)
		/* nothing */;
	if (len < 0) {
		FUNC7(" %s\n", FUNC4(a));
		++error_count;
	} else {
		FUNC7(" OK\n");
	}

	/* shouldn't be necessary, but it doesn't hurt */
	FUNC1(FUNC6(a));

	return error_count;
}