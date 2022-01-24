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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct inode {scalar_t__ i_number; int /*<<< orphan*/  i_devvp; } ;

/* Variables and functions */
 scalar_t__ VFIFO ; 
 struct inode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct vop_print_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct inode *ip = FUNC0(vp);

	FUNC3(ip->i_devvp, "\tino %ju", (uintmax_t)ip->i_number);
	if (vp->v_type == VFIFO)
		FUNC1(vp);
	FUNC2("\n");
	return (0);
}