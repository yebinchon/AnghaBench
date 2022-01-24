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
 int /*<<< orphan*/  LK_RELEASE ; 
 struct nfsnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(struct vnode *vp, bool old_lock)
{
	struct nfsnode *np;

	if (!old_lock)
		return;
	np = FUNC0(vp);
	FUNC1(&np->n_excl, LK_RELEASE, NULL);
}