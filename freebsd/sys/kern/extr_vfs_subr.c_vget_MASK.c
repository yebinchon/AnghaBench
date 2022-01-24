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
typedef  enum vgetstate { ____Placeholder_vgetstate } vgetstate ;

/* Variables and functions */
 int LK_INTERLOCK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct vnode*,int) ; 
 struct thread* curthread ; 
 int FUNC2 (struct vnode*,int,int) ; 

int
FUNC3(struct vnode *vp, int flags, struct thread *td)
{
	enum vgetstate vs;

	FUNC0(td == curthread);

	vs = FUNC1(vp, (flags & LK_INTERLOCK) != 0);
	return (FUNC2(vp, flags, vs));
}