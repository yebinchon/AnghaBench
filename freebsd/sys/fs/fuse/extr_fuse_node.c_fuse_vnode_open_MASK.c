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
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 scalar_t__ VREG ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct thread*) ; 
 scalar_t__ FUNC1 (struct vnode*) ; 

void
FUNC2(struct vnode *vp, int32_t fuse_open_flags, struct thread *td)
{
	if (FUNC1(vp) == VREG)
		FUNC0(vp, 0, td);
}