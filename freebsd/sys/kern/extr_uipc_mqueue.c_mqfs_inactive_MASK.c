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
struct vop_inactive_args {int /*<<< orphan*/  a_vp; } ;
struct mqfs_node {scalar_t__ mn_deleted; } ;

/* Variables and functions */
 struct mqfs_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct vop_inactive_args *ap)
{
	struct mqfs_node *pn = FUNC0(ap->a_vp);

	if (pn->mn_deleted)
		FUNC1(ap->a_vp);
	return (0);
}