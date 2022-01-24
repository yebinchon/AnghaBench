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
struct vop_getextattr_args {char* a_name; struct uio* a_uio; struct ucred* a_cred; struct thread* a_td; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct vattr {int dummy; } ;
struct uio {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct smbnode {int n_dosattr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct vnode*,int /*<<< orphan*/ ,struct ucred*,struct thread*) ; 
 int FUNC1 (struct vnode*,struct vattr*,struct ucred*) ; 
 int /*<<< orphan*/  VREAD ; 
 struct smbnode* FUNC2 (struct vnode*) ; 
 char* smbfs_atl ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (char*,int,struct uio*) ; 

__attribute__((used)) static int
FUNC5(struct vop_getextattr_args *ap)
/* {
        IN struct vnode *a_vp;
        IN char *a_name;
        INOUT struct uio *a_uio;
        IN struct ucred *a_cred;
        IN struct thread *a_td;
};
*/
{
	struct vnode *vp = ap->a_vp;
	struct thread *td = ap->a_td;
	struct ucred *cred = ap->a_cred;
	struct uio *uio = ap->a_uio;
	const char *name = ap->a_name;
	struct smbnode *np = FUNC2(vp);
	struct vattr vattr;
	char buf[10];
	int i, attr, error;

	error = FUNC0(vp, VREAD, cred, td);
	if (error)
		return error;
	error = FUNC1(vp, &vattr, cred);
	if (error)
		return error;
	if (FUNC3(name, "dosattr") == 0) {
		attr = np->n_dosattr;
		for (i = 0; i < 6; i++, attr >>= 1)
			buf[i] = (attr & 1) ? smbfs_atl[i] : '-';
		buf[i] = 0;
		error = FUNC4(buf, i, uio);
		
	} else
		error = EINVAL;
	return error;
}