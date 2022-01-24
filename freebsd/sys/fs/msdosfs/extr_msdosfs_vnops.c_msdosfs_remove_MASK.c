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
struct vop_remove_args {TYPE_1__* a_vp; TYPE_1__* a_dvp; } ;
struct denode {int dummy; } ;
struct TYPE_2__ {scalar_t__ v_type; int v_usecount; } ;

/* Variables and functions */
 int EPERM ; 
 scalar_t__ VDIR ; 
 struct denode* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct denode*,int) ; 
 int FUNC2 (struct denode*,struct denode*) ; 

__attribute__((used)) static int
FUNC3(struct vop_remove_args *ap)
{
	struct denode *dep = FUNC0(ap->a_vp);
	struct denode *ddep = FUNC0(ap->a_dvp);
	int error;

	if (ap->a_vp->v_type == VDIR)
		error = EPERM;
	else
		error = FUNC2(ddep, dep);
#ifdef MSDOSFS_DEBUG
	printf("msdosfs_remove(), dep %p, v_usecount %d\n", dep, ap->a_vp->v_usecount);
#endif
	return (error);
}