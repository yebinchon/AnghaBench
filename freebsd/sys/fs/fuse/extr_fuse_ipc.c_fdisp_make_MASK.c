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
typedef  int /*<<< orphan*/  uint64_t ;
struct ucred {int dummy; } ;
struct thread {TYPE_1__* td_proc; } ;
struct mount {int dummy; } ;
struct fuse_dispatcher {int dummy; } ;
struct fuse_data {int dummy; } ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_2__ {int /*<<< orphan*/  p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct thread*,struct ucred*) ; 
 void FUNC1 (struct fuse_dispatcher*,int,struct fuse_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*) ; 
 struct fuse_data* FUNC2 (struct mount*) ; 

void
FUNC3(struct fuse_dispatcher *fdip, enum fuse_opcode op, struct mount *mp,
    uint64_t nid, struct thread *td, struct ucred *cred)
{
	struct fuse_data *data = FUNC2(mp);
	FUNC0(td, cred);

	return FUNC1(fdip, op, data, nid, td->td_proc->p_pid, cred);
}