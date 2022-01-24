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
struct vop_islocked_args {int /*<<< orphan*/  a_vp; } ;
struct unionfs_node {scalar_t__ un_uppervp; scalar_t__ un_lowervp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NULLVP ; 
 int FUNC1 (scalar_t__) ; 
 struct unionfs_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct vop_islocked_args*) ; 

__attribute__((used)) static int
FUNC4(struct vop_islocked_args *ap)
{
	struct unionfs_node *unp;

	FUNC0(ap->a_vp);

	unp = FUNC2(ap->a_vp);
	if (unp == NULL)
		return (FUNC3(ap));

	if (unp->un_uppervp != NULLVP)
		return (FUNC1(unp->un_uppervp));
	if (unp->un_lowervp != NULLVP)
		return (FUNC1(unp->un_lowervp));
	return (FUNC3(ap));
}