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
struct vnode {int dummy; } ;
struct nfsnode {scalar_t__ n_attrstamp; TYPE_1__* n_accesscache; } ;
struct TYPE_2__ {scalar_t__ stamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsnode*) ; 
 int NFS_ACCESSCACHESIZE ; 
 struct nfsnode* FUNC4 (struct vnode*) ; 

void
FUNC5(struct vnode *vp)
{
	struct nfsnode *np = FUNC4(vp);
	int i;

	FUNC2(np);
	for (i = 0; i < NFS_ACCESSCACHESIZE; i++)
		np->n_accesscache[i].stamp = 0;
	FUNC0(vp);
	np->n_attrstamp = 0;
	FUNC1(vp);
	FUNC3(np);
}