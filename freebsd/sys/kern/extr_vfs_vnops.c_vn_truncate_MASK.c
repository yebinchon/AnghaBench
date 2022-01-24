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
struct vnode {scalar_t__ v_type; } ;
struct ucred {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;
struct file {int f_flag; int /*<<< orphan*/  f_cred; struct vnode* f_vnode; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*) ; 
 int EISDIR ; 
 int LK_EXCLUSIVE ; 
 int LK_RETRY ; 
 int /*<<< orphan*/  OFF_MAX ; 
 int O_FSYNC ; 
 int PCATCH ; 
 scalar_t__ VDIR ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*,int /*<<< orphan*/ ) ; 
 int V_WAIT ; 
 int FUNC2 (struct ucred*,int /*<<< orphan*/ ,struct vnode*) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct vnode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vnode*,void*) ; 
 void* FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct vnode*,struct mount**,int) ; 
 int FUNC8 (struct vnode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct file *fp, off_t length, struct ucred *active_cred,
    struct thread *td)
{
	struct mount *mp;
	struct vnode *vp;
	void *rl_cookie;
	int error;

	vp = fp->f_vnode;

	/*
	 * Lock the whole range for truncation.  Otherwise split i/o
	 * might happen partly before and partly after the truncation.
	 */
	rl_cookie = FUNC6(vp, 0, OFF_MAX);
	error = FUNC7(vp, &mp, V_WAIT | PCATCH);
	if (error)
		goto out1;
	FUNC4(vp, LK_EXCLUSIVE | LK_RETRY);
	FUNC0(vp);
	if (vp->v_type == VDIR) {
		error = EISDIR;
		goto out;
	}
#ifdef MAC
	error = mac_vnode_check_write(active_cred, fp->f_cred, vp);
	if (error)
		goto out;
#endif
	error = FUNC8(vp, length, (fp->f_flag & O_FSYNC) != 0,
	    fp->f_cred);
out:
	FUNC1(vp, 0);
	FUNC3(mp);
out1:
	FUNC5(vp, rl_cookie);
	return (error);
}