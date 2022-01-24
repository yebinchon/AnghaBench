#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ucred {int dummy; } ;
struct fuse_dispatcher {int /*<<< orphan*/  iosize; TYPE_1__* tick; int /*<<< orphan*/  finh; int /*<<< orphan*/  indata; } ;
struct fuse_data {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  enum fuse_opcode { ____Placeholder_fuse_opcode } fuse_opcode ;
struct TYPE_4__ {int /*<<< orphan*/  tk_ms_fiov; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ucred*) ; 
 TYPE_1__* FUNC3 (struct fuse_data*) ; 

__attribute__((used)) static void
FUNC4(struct fuse_dispatcher *fdip, enum fuse_opcode op,
    struct fuse_data *data, uint64_t nid, pid_t pid, struct ucred *cred)
{
	if (fdip->tick) {
		FUNC1(fdip->tick);
	} else {
		fdip->tick = FUNC3(data);
	}

	/* FUSE_DIMALLOC will bzero the fiovs when it enlarges them */
	FUNC0(&fdip->tick->tk_ms_fiov, fdip->finh,
	    fdip->indata, fdip->iosize);

	FUNC2(fdip->finh, fdip->tick, nid, op, fdip->iosize, pid, cred);
}