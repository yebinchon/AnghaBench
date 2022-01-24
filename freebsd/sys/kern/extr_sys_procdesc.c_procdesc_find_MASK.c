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
struct procdesc {struct proc* pd_proc; } ;
struct proc {int dummy; } ;
struct file {scalar_t__ f_type; struct procdesc* f_data; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 scalar_t__ DTYPE_PROCDESC ; 
 int EBADF ; 
 int ESRCH ; 
 int /*<<< orphan*/  FUNC0 (struct proc*) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct thread*) ; 
 int FUNC2 (struct thread*,int,int /*<<< orphan*/ *,struct file**) ; 
 int /*<<< orphan*/  proctree_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(struct thread *td, int fd, cap_rights_t *rightsp,
    struct proc **p)
{
	struct procdesc *pd;
	struct file *fp;
	int error;

	error = FUNC2(td, fd, rightsp, &fp);
	if (error)
		return (error);
	if (fp->f_type != DTYPE_PROCDESC) {
		error = EBADF;
		goto out;
	}
	pd = fp->f_data;
	FUNC3(&proctree_lock);
	if (pd->pd_proc != NULL) {
		*p = pd->pd_proc;
		FUNC0(*p);
	} else
		error = ESRCH;
	FUNC4(&proctree_lock);
out:
	FUNC1(fp, td);
	return (error);
}