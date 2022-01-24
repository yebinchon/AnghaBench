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
struct TYPE_2__ {int /*<<< orphan*/ * bo_object; } ;
struct vnode {int v_iflag; TYPE_1__ v_bufobj; } ;
struct thread {int dummy; } ;
struct smbnode {int n_flag; } ;

/* Variables and functions */
 int EINTR ; 
 int ERESTART ; 
 int NFLUSHINPROG ; 
 int NFLUSHWANT ; 
 int NMODIFIED ; 
 int /*<<< orphan*/  OBJPC_SYNC ; 
 int /*<<< orphan*/  PCATCH ; 
 scalar_t__ PRIBIO ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct smbnode* FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  V_SAVE ; 
 int hz ; 
 int FUNC3 (struct thread*) ; 
 int FUNC4 (int*,scalar_t__,char*,int) ; 
 int FUNC5 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

int
FUNC8(struct vnode *vp, struct thread *td)
{
	struct smbnode *np = FUNC2(vp);
	int error = 0;

	if (vp->v_iflag & VI_DOOMED)
		return 0;

	while (np->n_flag & NFLUSHINPROG) {
		np->n_flag |= NFLUSHWANT;
		error = FUNC4(&np->n_flag, PRIBIO + 2, "smfsvinv", 2 * hz);
		error = FUNC3(td);
		if (error == EINTR)
			return EINTR;
	}
	np->n_flag |= NFLUSHINPROG;

	if (vp->v_bufobj.bo_object != NULL) {
		FUNC0(vp->v_bufobj.bo_object);
		FUNC6(vp->v_bufobj.bo_object, 0, 0, OBJPC_SYNC);
		FUNC1(vp->v_bufobj.bo_object);
	}

	error = FUNC5(vp, V_SAVE, PCATCH, 0);
	while (error) {
		if (error == ERESTART || error == EINTR) {
			np->n_flag &= ~NFLUSHINPROG;
			if (np->n_flag & NFLUSHWANT) {
				np->n_flag &= ~NFLUSHWANT;
				FUNC7(&np->n_flag);
			}
			return EINTR;
		}
		error = FUNC5(vp, V_SAVE, PCATCH, 0);
	}
	np->n_flag &= ~(NMODIFIED | NFLUSHINPROG);
	if (np->n_flag & NFLUSHWANT) {
		np->n_flag &= ~NFLUSHWANT;
		FUNC7(&np->n_flag);
	}
	return (error);
}