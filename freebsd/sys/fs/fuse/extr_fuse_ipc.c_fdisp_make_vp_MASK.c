#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {int dummy; } ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct ucred*) ; 
 int /*<<< orphan*/  FUNC1 (struct vnode*) ; 
 void FUNC2 (struct fuse_dispatcher*,int,struct fuse_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*) ; 
 struct fuse_data* FUNC3 (struct mount*) ; 
 struct mount* FUNC4 (struct vnode*) ; 

void
FUNC5(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct vnode *vp, struct thread *td, struct ucred *cred)
{
	struct mount *mp = FUNC4(vp);
	struct fuse_data *data = FUNC3(mp);

	FUNC0(td, cred);
	return FUNC2(fdip, op, data, FUNC1(vp),
	    td->td_proc->p_pid, cred);
}