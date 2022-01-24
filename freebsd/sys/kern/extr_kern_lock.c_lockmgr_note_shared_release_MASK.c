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
struct lock {int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct lock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOCKSTAT_READER ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  lockmgr__release ; 

__attribute__((used)) static void
FUNC5(struct lock *lk, const char *file, int line)
{

	FUNC0(lockmgr__release, lk, LOCKSTAT_READER);
	FUNC4(&lk->lock_object, 0, file, line);
	FUNC1("SUNLOCK", &lk->lock_object, 0, 0, file, line);
	FUNC2(curthread);
	FUNC3(curthread);
}