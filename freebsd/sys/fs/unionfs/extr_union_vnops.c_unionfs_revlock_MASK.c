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

/* Variables and functions */
 int LK_EXCLUSIVE ; 
 int LK_RELEASE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int) ; 
 scalar_t__ FUNC1 (struct vnode*,int) ; 

__attribute__((used)) static void
FUNC2(struct vnode *vp, int flags)
{
	if (flags & LK_RELEASE)
		FUNC0(vp, flags);
	else {
		/* UPGRADE */
		if (FUNC1(vp, flags) != 0)
			FUNC1(vp, LK_EXCLUSIVE | LK_RETRY);
	}
}