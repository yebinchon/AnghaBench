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
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct stat {int dummy; } ;
struct file {int /*<<< orphan*/  f_cred; struct vnode* f_vnode; } ;

/* Variables and functions */
 int LK_RETRY ; 
 int LK_SHARED ; 
 int /*<<< orphan*/  FUNC0 (struct vnode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int) ; 
 int FUNC2 (struct vnode*,struct stat*,struct ucred*,int /*<<< orphan*/ ,struct thread*) ; 

__attribute__((used)) static int
FUNC3(struct file *fp, struct stat *sb, struct ucred *active_cred,
    struct thread *td)
{
	struct vnode *vp = fp->f_vnode;
	int error;

	FUNC1(vp, LK_SHARED | LK_RETRY);
	error = FUNC2(vp, sb, active_cred, fp->f_cred, td);
	FUNC0(vp, 0);

	return (error);
}