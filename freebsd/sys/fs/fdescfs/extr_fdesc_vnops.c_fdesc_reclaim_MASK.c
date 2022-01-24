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
struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/ * v_data; } ;
struct fdescnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_TEMP ; 
 struct fdescnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct fdescnode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct vop_reclaim_args *ap)
{
	struct vnode *vp;
	struct fdescnode *fd;

 	vp = ap->a_vp;
 	fd = FUNC0(vp);
	FUNC1(fd);
	FUNC2(vp->v_data, M_TEMP);
	vp->v_data = NULL;
	return (0);
}