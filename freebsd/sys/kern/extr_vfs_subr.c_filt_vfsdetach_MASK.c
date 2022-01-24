#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vnode {TYPE_2__* v_pollinfo; } ;
struct knote {scalar_t__ kn_hook; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {TYPE_1__ vpi_selinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vnode*) ; 

__attribute__((used)) static void
FUNC3(struct knote *kn)
{
	struct vnode *vp = (struct vnode *)kn->kn_hook;

	FUNC0(vp->v_pollinfo != NULL, ("Missing v_pollinfo"));
	FUNC1(&vp->v_pollinfo->vpi_selinfo.si_note, kn, 0);
	FUNC2(vp);
}