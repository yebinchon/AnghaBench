#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ttm_tt {scalar_t__ state; int page_flags; TYPE_1__* func; int /*<<< orphan*/ * swap_storage; TYPE_3__* bdev; int /*<<< orphan*/ * pages; } ;
struct TYPE_6__ {TYPE_2__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  (* destroy ) (struct ttm_tt*) ;} ;

/* Variables and functions */
 int TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_tt*) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_tt*) ; 
 scalar_t__ tt_bound ; 
 int /*<<< orphan*/  FUNC3 (struct ttm_tt*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ttm_tt *ttm)
{
	if (FUNC4(ttm == NULL))
		return;

	if (ttm->state == tt_bound) {
		FUNC3(ttm);
	}

	if (FUNC0(ttm->pages != NULL)) {
		ttm->bdev->driver->ttm_tt_unpopulate(ttm);
	}

	if (!(ttm->page_flags & TTM_PAGE_FLAG_PERSISTENT_SWAP) &&
	    ttm->swap_storage)
		FUNC5(ttm->swap_storage);

	ttm->swap_storage = NULL;
	ttm->func->destroy(ttm);
}