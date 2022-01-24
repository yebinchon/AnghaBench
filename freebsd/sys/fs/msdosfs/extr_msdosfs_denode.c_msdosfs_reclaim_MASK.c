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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/ * v_data; } ;
struct denode {char* de_Name; scalar_t__ de_flag; int /*<<< orphan*/  de_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MSDOSFSNODE ; 
 struct denode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct denode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct denode*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

int
FUNC4(struct vop_reclaim_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct denode *dep = FUNC0(vp);

#ifdef MSDOSFS_DEBUG
	printf("msdosfs_reclaim(): dep %p, file %s, refcnt %ld\n",
	    dep, dep->de_Name, dep->de_refcnt);
#endif

	/*
	 * Remove the denode from its hash chain.
	 */
	FUNC3(vp);
	/*
	 * Purge old data structures associated with the denode.
	 */
#if 0 /* XXX */
	dep->de_flag = 0;
#endif
	FUNC1(dep, M_MSDOSFSNODE);
	vp->v_data = NULL;

	return (0);
}