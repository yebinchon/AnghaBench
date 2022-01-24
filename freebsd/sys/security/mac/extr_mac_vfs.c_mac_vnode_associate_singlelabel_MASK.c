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
struct vnode {int /*<<< orphan*/  v_label; } ;
struct mount {int /*<<< orphan*/  mnt_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mount*,int /*<<< orphan*/ ,struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vnode_associate_singlelabel ; 

void
FUNC1(struct mount *mp, struct vnode *vp)
{

	FUNC0(vnode_associate_singlelabel, mp,
	    mp->mnt_label, vp, vp->v_label);
}