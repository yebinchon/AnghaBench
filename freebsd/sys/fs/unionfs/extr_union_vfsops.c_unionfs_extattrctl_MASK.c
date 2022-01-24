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
struct vnode {int dummy; } ;
struct unionfs_node {scalar_t__ un_uppervp; scalar_t__ un_lowervp; } ;
struct unionfs_mount {TYPE_2__* um_lowervp; TYPE_1__* um_uppervp; } ;
struct mount {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  v_mount; } ;
struct TYPE_3__ {int /*<<< orphan*/  v_mount; } ;

/* Variables and functions */
 struct unionfs_mount* FUNC0 (struct mount*) ; 
 scalar_t__ NULLVP ; 
 int FUNC1 (int /*<<< orphan*/ ,int,scalar_t__,int,char const*) ; 
 struct unionfs_node* FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct mount *mp, int cmd, struct vnode *filename_vp,
    int namespace, const char *attrname)
{
	struct unionfs_mount *ump;
	struct unionfs_node *unp;

	ump = FUNC0(mp);
	unp = FUNC2(filename_vp);

	if (unp->un_uppervp != NULLVP) {
		return (FUNC1(ump->um_uppervp->v_mount, cmd,
		    unp->un_uppervp, namespace, attrname));
	} else {
		return (FUNC1(ump->um_lowervp->v_mount, cmd,
		    unp->un_lowervp, namespace, attrname));
	}
}