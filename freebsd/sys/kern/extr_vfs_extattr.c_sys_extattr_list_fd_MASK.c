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
struct extattr_list_fd_args {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  data; int /*<<< orphan*/  attrnamespace; int /*<<< orphan*/  fd; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_EXTATTR_LIST ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct thread*) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 

int
FUNC6(struct thread *td, struct extattr_list_fd_args *uap)
{
	struct file *fp;
	cap_rights_t rights;
	int error;

	FUNC0(uap->fd);
	FUNC1(uap->attrnamespace);
	error = FUNC5(td, uap->fd,
	    FUNC2(&rights, CAP_EXTATTR_LIST), &fp);
	if (error)
		return (error);

	error = FUNC3(fp->f_vnode, uap->attrnamespace, uap->data,
	    uap->nbytes, td);

	FUNC4(fp, td);
	return (error);
}