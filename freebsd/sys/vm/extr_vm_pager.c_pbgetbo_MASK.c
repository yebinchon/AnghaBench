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
struct bufobj {int dummy; } ;
struct buf {struct bufobj* b_bufobj; int /*<<< orphan*/  b_flags; int /*<<< orphan*/ * b_vp; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_PAGING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 

void
FUNC1(struct bufobj *bo, struct buf *bp)
{

	FUNC0(bp->b_vp == NULL, ("pbgetbo: not free (vnode)"));
	FUNC0(bp->b_bufobj == NULL, ("pbgetbo: not free (bufobj)"));

	bp->b_flags |= B_PAGING;
	bp->b_bufobj = bo;
}