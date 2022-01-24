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
struct vnode {int /*<<< orphan*/  v_mount; } ;
struct ufsmount {scalar_t__* um_quotas; } ;
struct dquot {int dummy; } ;
struct TYPE_2__ {struct dquot** i_dquot; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 struct dquot* NODQUOT ; 
 scalar_t__ NULLVP ; 
 struct ufsmount* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*,struct dquot*) ; 

int
FUNC3(struct vnode *vp)
{
	struct ufsmount *ump = FUNC0(vp->v_mount);
	struct dquot *dq;
	int i;

	/*
	 * Check if the mount point has any quotas.
	 * If not, simply return.
	 */
	for (i = 0; i < MAXQUOTAS; i++)
		if (ump->um_quotas[i] != NULLVP)
			break;
	if (i == MAXQUOTAS)
		return (0);
	/*
	 * Search quotas associated with this vnode
	 * synchronizing any modified dquot structures.
	 */
	for (i = 0; i < MAXQUOTAS; i++) {
		dq = FUNC1(vp)->i_dquot[i];
		if (dq != NODQUOT)
			FUNC2(vp, dq);
	}
	return (0);
}