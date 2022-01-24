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
struct bufobj {int bo_bsize; } ;
struct vnode {struct bufobj v_bufobj; } ;
typedef  int off_t ;
typedef  int daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vnode*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufobj*) ; 
 int /*<<< orphan*/  FUNC2 (struct bufobj*) ; 
 scalar_t__ EAGAIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC5 (struct vnode*,struct bufobj*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC7(struct vnode *vp, daddr_t startlbn, daddr_t endlbn,
    int blksize)
{
	struct bufobj *bo;
	off_t start, end;

	FUNC0(vp, "v_inval_buf_range");

	start = blksize * startlbn;
	end = blksize * endlbn;

	bo = &vp->v_bufobj;
	FUNC1(bo);
	FUNC3(blksize == bo->bo_bsize);

	while (FUNC5(vp, bo, startlbn, endlbn) == EAGAIN)
		;

	FUNC2(bo);
	FUNC6(vp, FUNC4(start), FUNC4(end + PAGE_SIZE - 1));
}