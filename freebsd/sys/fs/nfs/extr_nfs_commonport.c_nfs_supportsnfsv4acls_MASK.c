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
struct vnode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int FUNC1 (struct vnode*,int /*<<< orphan*/ ,long*) ; 
 int /*<<< orphan*/  _PC_ACL_NFS4 ; 
 scalar_t__ nfsrv_useacl ; 

int
FUNC2(struct vnode *vp)
{
	int error;
	long retval;

	FUNC0(vp, "nfs supports nfsv4acls");

	if (nfsrv_useacl == 0)
		return (0);
	error = FUNC1(vp, _PC_ACL_NFS4, &retval);
	if (error == 0 && retval != 0)
		return (1);
	return (0);
}