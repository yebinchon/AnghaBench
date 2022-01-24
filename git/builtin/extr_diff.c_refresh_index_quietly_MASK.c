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
struct lock_file {int dummy; } ;

/* Variables and functions */
 struct lock_file LOCK_INIT ; 
 int REFRESH_QUIET ; 
 int REFRESH_UNMERGED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct lock_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct lock_file*) ; 
 int /*<<< orphan*/  the_repository ; 

__attribute__((used)) static void FUNC5(void)
{
	struct lock_file lock_file = LOCK_INIT;
	int fd;

	fd = FUNC1(&lock_file, 0);
	if (fd < 0)
		return;
	FUNC0();
	FUNC2();
	FUNC3(REFRESH_QUIET|REFRESH_UNMERGED);
	FUNC4(the_repository, &lock_file);
}