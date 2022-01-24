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
struct vnode {int v_iflag; } ;
struct vattr {int /*<<< orphan*/  va_mtime; } ;
struct thread {int dummy; } ;
struct nfsvattr {int dummy; } ;
struct nfsrv_descript {int /*<<< orphan*/  nd_cred; } ;

/* Variables and functions */
 int ESTALE ; 
 scalar_t__ LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int LK_UPGRADE ; 
 scalar_t__ FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vattr*) ; 
 int VI_DOOMED ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,struct nfsvattr*,struct nfsrv_descript*,struct thread*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct vnode *vp, struct nfsvattr *nvap,
    struct nfsrv_descript *nd, struct thread *p)
{
	struct vattr va;

	FUNC2(&va);
	FUNC5(&va.va_mtime);
	if (FUNC0(vp) != LK_EXCLUSIVE) {
		FUNC1(vp, LK_UPGRADE | LK_RETRY);
		if ((vp->v_iflag & VI_DOOMED) != 0)
			return (ESTALE);
	}
	(void) FUNC3(vp, &va, nd->nd_cred);
	(void) FUNC4(vp, nvap, nd, p, 1, NULL);
	return (0);
}