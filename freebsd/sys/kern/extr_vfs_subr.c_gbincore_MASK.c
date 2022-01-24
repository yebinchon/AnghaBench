#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bv_root; } ;
struct TYPE_3__ {int /*<<< orphan*/  bv_root; } ;
struct bufobj {TYPE_2__ bo_dirty; TYPE_1__ bo_clean; } ;
struct buf {int dummy; } ;
typedef  int /*<<< orphan*/  daddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufobj*) ; 
 struct buf* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct buf *
FUNC2(struct bufobj *bo, daddr_t lblkno)
{
	struct buf *bp;

	FUNC0(bo);
	bp = FUNC1(&bo->bo_clean.bv_root, lblkno);
	if (bp != NULL)
		return (bp);
	return FUNC1(&bo->bo_dirty.bv_root, lblkno);
}