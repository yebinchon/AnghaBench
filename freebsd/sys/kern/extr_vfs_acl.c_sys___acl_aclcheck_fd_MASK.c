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
struct thread {int dummy; } ;
struct file {int /*<<< orphan*/  f_vnode; } ;
struct __acl_aclcheck_fd_args {int /*<<< orphan*/  aclp; int /*<<< orphan*/  type; int /*<<< orphan*/  filedes; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_ACL_CHECK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,struct thread*) ; 
 int FUNC3 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 
 int FUNC4 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5(struct thread *td, struct __acl_aclcheck_fd_args *uap)
{
	struct file *fp;
	cap_rights_t rights;
	int error;

	FUNC0(uap->filedes);
	error = FUNC3(td, uap->filedes,
	    FUNC1(&rights, CAP_ACL_CHECK), &fp);
	if (error == 0) {
		error = FUNC4(td, fp->f_vnode, uap->type, uap->aclp);
		FUNC2(fp, td);
	}
	return (error);
}