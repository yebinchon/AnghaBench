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
struct vnode {TYPE_1__* v_pollinfo; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int vpi_revents; int vpi_events; int /*<<< orphan*/  vpi_lock; int /*<<< orphan*/  vpi_selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 

int
FUNC4(struct vnode *vp, struct thread *td, int events)
{

	FUNC3(vp);
	FUNC0(&vp->v_pollinfo->vpi_lock);
	if (vp->v_pollinfo->vpi_revents & events) {
		/*
		 * This leaves events we are not interested
		 * in available for the other process which
		 * which presumably had requested them
		 * (otherwise they would never have been
		 * recorded).
		 */
		events &= vp->v_pollinfo->vpi_revents;
		vp->v_pollinfo->vpi_revents &= ~events;

		FUNC1(&vp->v_pollinfo->vpi_lock);
		return (events);
	}
	vp->v_pollinfo->vpi_events |= events;
	FUNC2(td, &vp->v_pollinfo->vpi_selinfo);
	FUNC1(&vp->v_pollinfo->vpi_lock);
	return (0);
}