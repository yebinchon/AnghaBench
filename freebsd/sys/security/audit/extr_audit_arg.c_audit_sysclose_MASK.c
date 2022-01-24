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
struct thread {int dummy; } ;
struct kaudit_record {int dummy; } ;
struct file {struct vnode* f_vnode; } ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vnode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct kaudit_record* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct thread*) ; 
 scalar_t__ FUNC7 (struct thread*,int,int /*<<< orphan*/ ,struct file**) ; 
 int /*<<< orphan*/  FUNC8 (struct vnode*,int) ; 

void
FUNC9(struct thread *td, int fd)
{
	cap_rights_t rights;
	struct kaudit_record *ar;
	struct vnode *vp;
	struct file *fp;

	FUNC0(td != NULL, ("audit_sysclose: td == NULL"));

	ar = FUNC5();
	if (ar == NULL)
		return;

	FUNC2(fd);

	if (FUNC7(td, fd, FUNC4(&rights), &fp) != 0)
		return;

	vp = fp->f_vnode;
	FUNC8(vp, LK_SHARED | LK_RETRY);
	FUNC3(vp);
	FUNC1(vp, 0);
	FUNC6(fp, td);
}