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
struct vop_access_args {int /*<<< orphan*/  a_cred; int /*<<< orphan*/  a_accmode; struct vnode* a_vp; } ;
struct vnode {int /*<<< orphan*/  v_type; struct pfs_vdata* v_data; } ;
struct vattr {int /*<<< orphan*/  va_gid; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_mode; } ;
struct pfs_vdata {TYPE_1__* pvd_pn; } ;
struct TYPE_2__ {int /*<<< orphan*/  pn_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct vnode*,struct vattr*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(struct vop_access_args *va)
{
	struct vnode *vn = va->a_vp;
	struct pfs_vdata *pvd = vn->v_data;
	struct vattr vattr;
	int error;

	FUNC1(("%s", pvd->pvd_pn->pn_name));
	(void)pvd;

	error = FUNC2(vn, &vattr, va->a_cred);
	if (error)
		FUNC0 (error);
	error = FUNC3(vn->v_type, vattr.va_mode, vattr.va_uid,
	    vattr.va_gid, va->a_accmode, va->a_cred, NULL);
	FUNC0 (error);
}