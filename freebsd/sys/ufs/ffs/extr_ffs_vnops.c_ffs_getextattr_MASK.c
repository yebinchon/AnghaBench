#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct vop_getextattr_args {int* a_size; int /*<<< orphan*/  a_td; int /*<<< orphan*/  a_cred; TYPE_1__* a_vp; int /*<<< orphan*/ * a_uio; int /*<<< orphan*/  a_name; int /*<<< orphan*/  a_attrnamespace; } ;
struct inode {unsigned int i_ea_len; int /*<<< orphan*/ * i_ea_area; } ;
struct TYPE_5__ {scalar_t__ v_type; } ;

/* Variables and functions */
 int ENOATTR ; 
 int EOPNOTSUPP ; 
 scalar_t__ VBLK ; 
 scalar_t__ VCHR ; 
 int /*<<< orphan*/  VREAD ; 
 struct inode* FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct vop_getextattr_args *ap)
/*
vop_getextattr {
	IN struct vnode *a_vp;
	IN int a_attrnamespace;
	IN const char *a_name;
	INOUT struct uio *a_uio;
	OUT size_t *a_size;
	IN struct ucred *a_cred;
	IN struct thread *a_td;
};
*/
{
	struct inode *ip;
	u_char *eae, *p;
	unsigned easize;
	int error, ealen;

	ip = FUNC0(ap->a_vp);

	if (ap->a_vp->v_type == VCHR || ap->a_vp->v_type == VBLK)
		return (EOPNOTSUPP);

	error = FUNC1(ap->a_vp, ap->a_attrnamespace,
	    ap->a_cred, ap->a_td, VREAD);
	if (error)
		return (error);

	error = FUNC4(ap->a_vp, ap->a_cred, ap->a_td);
	if (error)
		return (error);

	eae = ip->i_ea_area;
	easize = ip->i_ea_len;

	ealen = FUNC3(eae, easize, ap->a_attrnamespace, ap->a_name,
	    NULL, &p);
	if (ealen >= 0) {
		error = 0;
		if (ap->a_size != NULL)
			*ap->a_size = ealen;
		else if (ap->a_uio != NULL)
			error = FUNC5(p, ealen, ap->a_uio);
	} else
		error = ENOATTR;

	FUNC2(ap->a_vp, 0, ap->a_cred, ap->a_td);
	return (error);
}