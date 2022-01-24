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
struct vnode {int v_vflag; struct mount* v_mount; } ;
struct null_node {int null_flags; } ;
struct null_mount {int nullm_flags; } ;
struct mount {int dummy; } ;

/* Variables and functions */
 struct null_mount* FUNC0 (struct mount*) ; 
 int NULLM_CACHE ; 
 struct vnode* FUNC1 (struct vnode*) ; 
 int NULLV_DROP ; 
 struct null_node* FUNC2 (struct vnode*) ; 
 int VV_NOSYNC ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp)
{
	struct vnode *lvp;
	struct null_node *xp;
	struct mount *mp;
	struct null_mount *xmp;

	xp = FUNC2(vp);
	lvp = FUNC1(vp);
	mp = vp->v_mount;
	xmp = FUNC0(mp);
	if ((xmp->nullm_flags & NULLM_CACHE) == 0 ||
	    (xp->null_flags & NULLV_DROP) != 0 ||
	    (lvp->v_vflag & VV_NOSYNC) != 0) {
		/*
		 * If this is the last reference and caching of the
		 * nullfs vnodes is not enabled, or the lower vnode is
		 * deleted, then free up the vnode so as not to tie up
		 * the lower vnodes.
		 */
		return (1);
	}
	return (0);
}