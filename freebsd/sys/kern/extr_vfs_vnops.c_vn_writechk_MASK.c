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
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int ETXTBSY ; 
 scalar_t__ FUNC1 (struct vnode*) ; 

int
FUNC2(struct vnode *vp)
{

	FUNC0(vp, "vn_writechk");
	/*
	 * If there's shared text associated with
	 * the vnode, try to free it up once.  If
	 * we fail, we can't allow writing.
	 */
	if (FUNC1(vp))
		return (ETXTBSY);

	return (0);
}