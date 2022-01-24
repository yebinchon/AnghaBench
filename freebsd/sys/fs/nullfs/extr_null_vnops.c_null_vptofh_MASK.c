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
struct vop_vptofh_args {int /*<<< orphan*/  a_fhp; int /*<<< orphan*/  a_vp; } ;
struct vnode {int dummy; } ;

/* Variables and functions */
 struct vnode* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vop_vptofh_args *ap)
{
	struct vnode *lvp;

	lvp = FUNC0(ap->a_vp);
	return FUNC1(lvp, ap->a_fhp);
}