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
struct vnode {struct fifoinfo* v_fifoinfo; } ;
struct fifoinfo {scalar_t__ fi_readers; scalar_t__ fi_writers; int /*<<< orphan*/  fi_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  M_VNODE ; 
 int /*<<< orphan*/  FUNC1 (struct fifoinfo*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct vnode *vp)
{
	struct fifoinfo *fip;

	FUNC0(vp, "fifo_cleanup");
	fip = vp->v_fifoinfo;
	if (fip->fi_readers == 0 && fip->fi_writers == 0) {
		vp->v_fifoinfo = NULL;
		FUNC2(fip->fi_pipe);
		FUNC1(fip, M_VNODE);
	}
}