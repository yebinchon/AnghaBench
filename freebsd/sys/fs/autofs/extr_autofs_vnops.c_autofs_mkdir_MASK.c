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
struct vop_mkdir_args {int /*<<< orphan*/  a_vpp; TYPE_1__* a_cnp; struct vnode* a_dvp; } ;
struct vnode {int /*<<< orphan*/  v_mount; struct autofs_node* v_data; } ;
struct autofs_node {int dummy; } ;
struct autofs_mount {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cn_namelen; int /*<<< orphan*/  cn_nameptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct autofs_mount*) ; 
 int /*<<< orphan*/  FUNC1 (struct autofs_mount*) ; 
 int EPERM ; 
 int /*<<< orphan*/  LK_EXCLUSIVE ; 
 struct autofs_mount* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct autofs_node*,struct autofs_mount*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct autofs_node**) ; 
 int FUNC5 (struct autofs_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  curthread ; 

__attribute__((used)) static int
FUNC6(struct vop_mkdir_args *ap)
{
	struct vnode *vp;
	struct autofs_node *anp;
	struct autofs_mount *amp;
	struct autofs_node *child;
	int error;

	vp = ap->a_dvp;
	anp = vp->v_data;
	amp = FUNC2(vp->v_mount);

	/*
	 * Do not allow mkdir() if the calling thread is not
	 * automountd(8) descendant.
	 */
	if (FUNC3(curthread) == false)
		return (EPERM);

	FUNC0(amp);
	error = FUNC4(anp, amp, ap->a_cnp->cn_nameptr,
	    ap->a_cnp->cn_namelen, &child);
	if (error != 0) {
		FUNC1(amp);
		return (error);
	}
	FUNC1(amp);

	error = FUNC5(child, vp->v_mount, LK_EXCLUSIVE, ap->a_vpp);

	return (error);
}