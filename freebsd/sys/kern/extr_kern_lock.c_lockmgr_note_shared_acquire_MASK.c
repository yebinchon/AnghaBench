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
typedef  int /*<<< orphan*/  uint64_t ;
struct lock {int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lock*,int,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKSTAT_READER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  lockmgr__acquire ; 

__attribute__((used)) static void
FUNC7(struct lock *lk, int contested,
    uint64_t waittime, const char *file, int line, int flags)
{

	FUNC1(lockmgr__acquire, lk, contested,
	    waittime, file, line, LOCKSTAT_READER);
	FUNC2("SLOCK", &lk->lock_object, 0, 0, file, line);
	FUNC6(&lk->lock_object, FUNC0(flags), file, line);
	FUNC4(curthread);
	FUNC5(curthread);
	FUNC3(lk);
}