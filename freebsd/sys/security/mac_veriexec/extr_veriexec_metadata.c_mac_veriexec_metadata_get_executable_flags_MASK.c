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
struct vattr {int /*<<< orphan*/  va_gen; int /*<<< orphan*/  va_fileid; int /*<<< orphan*/  va_fsid; } ;
struct ucred {int dummy; } ;
struct proc {struct vnode* p_textvp; } ;

/* Variables and functions */
 int EINVAL ; 
 int VERIEXEC_FILES_FIRST ; 
 int FUNC0 (struct vnode*,struct vattr*,struct ucred*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 

int
FUNC2(struct ucred *cred, struct proc *p,
    int *flags, int check_files)
{
	struct vnode *proc_vn;
	struct vattr vap;
	int error;

	/* Get the text vnode for the process */
	proc_vn = p->p_textvp;
	if (proc_vn == NULL)
		return EINVAL;

	/* Get vnode attributes */
	error = FUNC0(proc_vn, &vap, cred);
	if (error)
		return error;

	error = FUNC1(vap.va_fsid,
	    vap.va_fileid, vap.va_gen, flags,
	    (check_files == VERIEXEC_FILES_FIRST));

	return (error);
}