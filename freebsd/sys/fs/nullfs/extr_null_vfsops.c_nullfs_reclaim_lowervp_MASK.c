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
struct mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  null_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULLV_NOUNLOCK ; 
 TYPE_1__* FUNC0 (struct vnode*) ; 
 struct vnode* FUNC1 (struct mount*,struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

__attribute__((used)) static void
FUNC4(struct mount *mp, struct vnode *lowervp)
{
	struct vnode *vp;

	vp = FUNC1(mp, lowervp);
	if (vp == NULL)
		return;
	FUNC0(vp)->null_flags |= NULLV_NOUNLOCK;
	FUNC2(vp);
	FUNC3(vp);
}