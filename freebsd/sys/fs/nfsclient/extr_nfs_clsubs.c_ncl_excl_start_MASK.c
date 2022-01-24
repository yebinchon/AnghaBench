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
struct vnode {int dummy; } ;
struct nfsnode {int /*<<< orphan*/  n_excl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int LK_EXCLUSIVE ; 
 int LK_SHARED ; 
 int FUNC2 (struct vnode*) ; 
 struct nfsnode* FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

bool
FUNC5(struct vnode *vp)
{
	struct nfsnode *np;
	int vn_lk;

	FUNC0(vp, "ncl_excl_start");
	vn_lk = FUNC2(vp);
	if (vn_lk == LK_EXCLUSIVE)
		return (false);
	FUNC1(vn_lk == LK_SHARED,
	    ("ncl_excl_start: wrong vnode lock %d", vn_lk));
	/* Ensure exclusive access, this might block */
	np = FUNC3(vp);
	FUNC4(&np->n_excl, LK_EXCLUSIVE, NULL);
	return (true);
}