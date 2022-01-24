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
struct lock {int /*<<< orphan*/  lock_object; int /*<<< orphan*/  lk_recurse; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKSTAT_WRITER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  LOP_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  lockmgr__release ; 

__attribute__((used)) static void
FUNC4(struct lock *lk, const char *file, int line)
{

	FUNC0(lockmgr__release, lk, LOCKSTAT_WRITER);
	FUNC1("XUNLOCK", &lk->lock_object, 0, lk->lk_recurse, file,
	    line);
	FUNC3(&lk->lock_object, LOP_EXCLUSIVE, file, line);
	FUNC2(curthread);
}