#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vop_rename_args {TYPE_1__* a_tvp; TYPE_1__* a_tdvp; TYPE_1__* a_fvp; TYPE_1__* a_fdvp; } ;
struct TYPE_3__ {scalar_t__ v_type; } ;

/* Variables and functions */
 long NOTE_DELETE ; 
 long NOTE_EXTEND ; 
 long NOTE_LINK ; 
 long NOTE_RENAME ; 
 long NOTE_WRITE ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(void *ap, int rc)
{
	struct vop_rename_args *a = ap;
	long hint;

	if (!rc) {
		hint = NOTE_WRITE;
		if (a->a_fdvp == a->a_tdvp) {
			if (a->a_tvp != NULL && a->a_tvp->v_type == VDIR)
				hint |= NOTE_LINK;
			FUNC0(a->a_fdvp, hint);
			FUNC0(a->a_tdvp, hint);
		} else {
			hint |= NOTE_EXTEND;
			if (a->a_fvp->v_type == VDIR)
				hint |= NOTE_LINK;
			FUNC0(a->a_fdvp, hint);

			if (a->a_fvp->v_type == VDIR && a->a_tvp != NULL &&
			    a->a_tvp->v_type == VDIR)
				hint &= ~NOTE_LINK;
			FUNC0(a->a_tdvp, hint);
		}

		FUNC0(a->a_fvp, NOTE_RENAME);
		if (a->a_tvp)
			FUNC0(a->a_tvp, NOTE_DELETE);
	}
	if (a->a_tdvp != a->a_fdvp)
		FUNC1(a->a_fdvp);
	if (a->a_tvp != a->a_fvp)
		FUNC1(a->a_fvp);
	FUNC1(a->a_tdvp);
	if (a->a_tvp)
		FUNC1(a->a_tvp);
}