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
struct sx {scalar_t__ sx_lock; int /*<<< orphan*/  sx_recurse; int /*<<< orphan*/  lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  LOP_EXCLUSIVE ; 
 int /*<<< orphan*/  SA_XLOCKED ; 
 scalar_t__ SX_LOCK_DESTROYED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sx*,scalar_t__,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sx*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sx*,uintptr_t,char const*,int) ; 
 scalar_t__ curthread ; 

void
FUNC7(struct sx *sx, const char *file, int line)
{

	FUNC0(sx->sx_lock != SX_LOCK_DESTROYED,
	    ("sx_xunlock() of destroyed sx @ %s:%d", file, line));
	FUNC5(sx, SA_XLOCKED, file, line);
	FUNC3(&sx->lock_object, LOP_EXCLUSIVE, file, line);
	FUNC1("XUNLOCK", &sx->lock_object, 0, sx->sx_recurse, file,
	    line);
#if LOCK_DEBUG > 0
	_sx_xunlock_hard(sx, (uintptr_t)curthread, file, line);
#else
	FUNC4(sx, curthread, file, line);
#endif
	FUNC2(curthread);
}