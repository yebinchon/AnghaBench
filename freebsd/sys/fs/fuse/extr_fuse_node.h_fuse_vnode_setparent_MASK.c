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
struct vnode {scalar_t__ v_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  flag; int /*<<< orphan*/  parent_nid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FN_PARENT_NID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VDIR ; 
 TYPE_1__* FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

__attribute__((used)) static inline void
FUNC3(struct vnode *vp, struct vnode *dvp)
{
	if (dvp != NULL && vp->v_type == VDIR) {
		FUNC0(dvp->v_type == VDIR);
		FUNC1(vp)->parent_nid = FUNC2(dvp);
		FUNC1(vp)->flag |= FN_PARENT_NID;
	} else {
		FUNC1(vp)->flag &= ~FN_PARENT_NID;
	}
}