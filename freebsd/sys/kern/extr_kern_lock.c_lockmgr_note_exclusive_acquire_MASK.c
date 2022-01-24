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
struct lock {int /*<<< orphan*/  lock_object; int /*<<< orphan*/  lk_recurse; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lock*,int,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKSTAT_WRITER ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int LOP_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC3 (struct lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char const*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  lockmgr__acquire ; 

__attribute__((used)) static void
FUNC6(struct lock *lk, int contested,
    uint64_t waittime, const char *file, int line, int flags)
{

	FUNC1(lockmgr__acquire, lk, contested,
	    waittime, file, line, LOCKSTAT_WRITER);
	FUNC2("XLOCK", &lk->lock_object, 0, lk->lk_recurse, file, line);
	FUNC5(&lk->lock_object, LOP_EXCLUSIVE | FUNC0(flags), file,
	    line);
	FUNC4(curthread);
	FUNC3(lk);
}