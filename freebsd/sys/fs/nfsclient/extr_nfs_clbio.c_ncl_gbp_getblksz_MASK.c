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
typedef  int u_quad_t ;
struct TYPE_2__ {int bo_bsize; } ;
struct vnode {TYPE_1__ v_bufobj; } ;
struct nfsnode {int n_size; } ;
typedef  int off_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 struct nfsnode* FUNC2 (struct vnode*) ; 

__attribute__((used)) static int
FUNC3(struct vnode *vp, daddr_t lbn)
{
	struct nfsnode *np;
	u_quad_t nsize;
	int biosize, bcount;

	np = FUNC2(vp);
	FUNC0(np);
	nsize = np->n_size;
	FUNC1(np);

	biosize = vp->v_bufobj.bo_bsize;
	bcount = biosize;
	if ((off_t)lbn * biosize >= nsize)
		bcount = 0;
	else if ((off_t)(lbn + 1) * biosize > nsize)
		bcount = nsize - (off_t)lbn * biosize;
	return (bcount);
}