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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct ttm_tt {scalar_t__ state; scalar_t__ caching_state; int num_pages; int /*<<< orphan*/  page_flags; int /*<<< orphan*/ * swap_storage; TYPE_2__* bdev; int /*<<< orphan*/ ** pages; } ;
struct TYPE_6__ {int /*<<< orphan*/  td_ucred; } ;
struct TYPE_5__ {TYPE_1__* driver; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* ttm_tt_unpopulate ) (struct ttm_tt*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  OBJT_SWAP ; 
 int /*<<< orphan*/  TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 int /*<<< orphan*/  TTM_PAGE_FLAG_SWAPPED ; 
 int /*<<< orphan*/  VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VM_PROT_DEFAULT ; 
 TYPE_3__* curthread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct ttm_tt*) ; 
 scalar_t__ tt_cached ; 
 scalar_t__ tt_unbound ; 
 scalar_t__ tt_unpopulated ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15(struct ttm_tt *ttm, vm_object_t persistent_swap_storage)
{
	vm_object_t obj;
	vm_page_t from_page, to_page;
	int i;

	FUNC1(ttm->state == tt_unbound || ttm->state == tt_unpopulated);
	FUNC1(ttm->caching_state == tt_cached);

	if (persistent_swap_storage == NULL) {
		obj = FUNC14(OBJT_SWAP, NULL,
		    FUNC0(ttm->num_pages), VM_PROT_DEFAULT, 0,
		    curthread->td_ucred);
		if (obj == NULL) {
			FUNC5("[TTM] Failed allocating swap storage\n");
			return (-ENOMEM);
		}
	} else
		obj = persistent_swap_storage;

	FUNC2(obj);
	FUNC8(obj, 1);
	for (i = 0; i < ttm->num_pages; ++i) {
		from_page = ttm->pages[i];
		if (FUNC7(from_page == NULL))
			continue;
		to_page = FUNC11(obj, i, VM_ALLOC_NORMAL);
		FUNC4(from_page, to_page);
		FUNC12(to_page);
		FUNC10(to_page);
		FUNC13(to_page);
	}
	FUNC9(obj);
	FUNC3(obj);

	ttm->bdev->driver->ttm_tt_unpopulate(ttm);
	ttm->swap_storage = obj;
	ttm->page_flags |= TTM_PAGE_FLAG_SWAPPED;
	if (persistent_swap_storage != NULL)
		ttm->page_flags |= TTM_PAGE_FLAG_PERSISTENT_SWAP;
	return (0);
}