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
struct extattr_set_fd_args {int /*<<< orphan*/  nbytes; int /*<<< orphan*/  data; int /*<<< orphan*/  attrnamespace; int /*<<< orphan*/  fd; int /*<<< orphan*/  attrname; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CAP_EXTATTR_SET ; 
 int EXTATTR_MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct thread*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 int FUNC7 (struct thread*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct file**) ; 

int
FUNC8(struct thread *td, struct extattr_set_fd_args *uap)
{
	struct file *fp;
	char attrname[EXTATTR_MAXNAMELEN];
	cap_rights_t rights;
	int error;

	FUNC0(uap->fd);
	FUNC2(uap->attrnamespace);
	error = FUNC4(uap->attrname, attrname, EXTATTR_MAXNAMELEN, NULL);
	if (error)
		return (error);
	FUNC1(attrname);

	error = FUNC7(td, uap->fd,
	    FUNC3(&rights, CAP_EXTATTR_SET), &fp);
	if (error)
		return (error);

	error = FUNC5(fp->f_vnode, uap->attrnamespace,
	    attrname, uap->data, uap->nbytes, td);
	FUNC6(fp, td);

	return (error);
}