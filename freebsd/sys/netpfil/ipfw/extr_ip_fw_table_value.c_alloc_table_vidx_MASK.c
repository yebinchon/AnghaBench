#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
struct tableop_state {scalar_t__ vshared; TYPE_1__* ta; TYPE_2__ opstate; int /*<<< orphan*/  tc; } ;
struct namedobj_instance {int dummy; } ;
struct ip_fw_chain {int dummy; } ;
struct TYPE_3__ {int vlimit; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ip_fw_chain*) ; 
 int FUNC1 (struct namedobj_instance*,int*) ; 
 int FUNC2 (struct ip_fw_chain*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static int
FUNC4(struct ip_fw_chain *ch, struct tableop_state *ts,
    struct namedobj_instance *vi, uint16_t *pvidx)
{
	int error, vlimit;
	uint16_t vidx;

	FUNC0(ch);

	error = FUNC1(vi, &vidx);
	if (error != 0) {

		/*
		 * We need to resize array. This involves
		 * lock/unlock, so we need to check "modified"
		 * state.
		 */
		ts->opstate.func(ts->tc, &ts->opstate);
		error = FUNC2(ch);
		return (error); /* ts->modified should be set, we will restart */
	}

	vlimit = ts->ta->vlimit;
	if (vlimit != 0 && vidx >= vlimit) {

		/*
		 * Algorithm is not able to store given index.
		 * We have to rollback state, start using
		 * per-table value array or return error
		 * if we're already using it.
		 *
		 * TODO: do not rollback state if
		 * atomicity is not required.
		 */
		if (ts->vshared != 0) {
			/* shared -> per-table  */
			return (ENOSPC); /* TODO: proper error */
		}

		/* per-table. Fail for now. */
		return (ENOSPC); /* TODO: proper error */
	}

	*pvidx = vidx;
	return (0);
}