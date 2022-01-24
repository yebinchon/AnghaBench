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
struct vop_write_args {int /*<<< orphan*/  a_vp; } ;
struct nfsnode {int /*<<< orphan*/  n_mtim; int /*<<< orphan*/  n_flag; } ;
struct TYPE_2__ {int (* vop_write ) (struct vop_write_args*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfsnode*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfsnode*) ; 
 int /*<<< orphan*/  NUPD ; 
 struct nfsnode* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fifo_specops ; 
 int FUNC3 (struct vop_write_args*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct vop_write_args *ap)
{
	struct nfsnode *np = FUNC2(ap->a_vp);

	/*
	 * Set update flag.
	 */
	FUNC0(np);
	np->n_flag |= NUPD;
	FUNC4(&np->n_mtim);
	FUNC1(np);
	return(fifo_specops.vop_write(ap));
}