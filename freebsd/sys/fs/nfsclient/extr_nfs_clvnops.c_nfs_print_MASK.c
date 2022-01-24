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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct TYPE_2__ {scalar_t__ na_fsid; scalar_t__ na_fileid; } ;
struct nfsnode {TYPE_1__ n_vattr; } ;

/* Variables and functions */
 scalar_t__ VFIFO ; 
 struct nfsnode* FUNC0 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(struct vop_print_args *ap)
{
	struct vnode *vp = ap->a_vp;
	struct nfsnode *np = FUNC0(vp);

	FUNC2("\tfileid %jd fsid 0x%jx", (uintmax_t)np->n_vattr.na_fileid,
	    (uintmax_t)np->n_vattr.na_fsid);
	if (vp->v_type == VFIFO)
		FUNC1(vp);
	FUNC2("\n");
	return (0);
}