#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct lock_object {int dummy; } ;
struct lock_class {int /*<<< orphan*/  (* lc_unlock ) (struct lock_object*) ;} ;
struct TYPE_2__ {int lo_flags; } ;
struct lock {int /*<<< orphan*/  lk_lock; TYPE_1__ lock_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
#define  LK_EXCLUSIVE 131 
 int LK_INTERLOCK ; 
 int LK_NOSHARE ; 
 int /*<<< orphan*/  LK_PRIO_DEFAULT ; 
#define  LK_SHARED 130 
 int /*<<< orphan*/  LK_TIMO_DEFAULT ; 
#define  LK_TRYUPGRADE 129 
 int LK_TYPE_MASK ; 
 int /*<<< orphan*/  LK_UNLOCKED ; 
#define  LK_UPGRADE 128 
 int /*<<< orphan*/  LK_WMESG_DEFAULT ; 
 struct lock_class* FUNC1 (struct lock_object*) ; 
 int LOP_EXCLUSIVE ; 
 int LOP_NEWORDER ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char const*,int,struct lock_object*) ; 
 int FUNC3 (struct lock*,int,struct lock_object*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  curthread ; 
 int /*<<< orphan*/  FUNC7 (struct lock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct lock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int) ; 
 int FUNC9 (struct lock*,int,struct lock_object*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct lock*,uintptr_t*,int,int) ; 
 int FUNC11 (struct lock*,int,struct lock_object*,char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct lock*,int,struct lock_object*,char const*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * panicstr ; 
 int /*<<< orphan*/  FUNC13 (struct lock_object*) ; 

int
FUNC14(struct lock *lk, u_int flags, struct lock_object *ilk,
    const char *file, int line)
{
	struct lock_class *class;
	uintptr_t x, tid;
	u_int op;
	bool locked;

	if (FUNC4(panicstr != NULL))
		return (0);

	op = flags & LK_TYPE_MASK;
	locked = false;
	switch (op) {
	case LK_SHARED:
		if (FUNC0(flags))
			FUNC2(&lk->lock_object, LOP_NEWORDER,
			    file, line, flags & LK_INTERLOCK ? ilk : NULL);
		if (FUNC4(lk->lock_object.lo_flags & LK_NOSHARE))
			break;
		if (FUNC10(lk, &x, flags, true)) {
			FUNC8(lk, 0, 0,
			    file, line, flags);
			locked = true;
		} else {
			return (FUNC9(lk, flags, ilk, file, line,
			    NULL));
		}
		break;
	case LK_EXCLUSIVE:
		if (FUNC0(flags))
			FUNC2(&lk->lock_object, LOP_NEWORDER |
			    LOP_EXCLUSIVE, file, line, flags & LK_INTERLOCK ?
			    ilk : NULL);
		tid = (uintptr_t)curthread;
		if (lk->lk_lock == LK_UNLOCKED &&
		    FUNC6(&lk->lk_lock, LK_UNLOCKED, tid)) {
			FUNC7(lk, 0, 0, file, line,
			    flags);
			locked = true;
		} else {
			return (FUNC12(lk, flags, ilk, file, line,
			    NULL));
		}
		break;
	case LK_UPGRADE:
	case LK_TRYUPGRADE:
		return (FUNC11(lk, flags, ilk, file, line, NULL));
	default:
		break;
	}
	if (FUNC5(locked)) {
		if (FUNC4(flags & LK_INTERLOCK)) {
			class = FUNC1(ilk);
			class->lc_unlock(ilk);
		}
		return (0);
	} else {
		return (FUNC3(lk, flags, ilk, LK_WMESG_DEFAULT,
		    LK_PRIO_DEFAULT, LK_TIMO_DEFAULT, file, line));
	}
}