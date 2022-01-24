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
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct ttm_tt {int num_pages; int page_flags; int /*<<< orphan*/ * swap_storage; int /*<<< orphan*/ ** pages; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int TTM_PAGE_FLAG_PERSISTENT_SWAP ; 
 int TTM_PAGE_FLAG_SWAPPED ; 
 int VM_ALLOC_NOBUSY ; 
 int VM_ALLOC_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int VM_PAGER_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int,int) ; 

int FUNC8(struct ttm_tt *ttm)
{
	vm_object_t obj;
	vm_page_t from_page, to_page;
	int i, ret, rv;

	obj = ttm->swap_storage;

	FUNC0(obj);
	FUNC5(obj, 1);
	for (i = 0; i < ttm->num_pages; ++i) {
		rv = FUNC7(&from_page, obj, i,
		    VM_ALLOC_NORMAL | VM_ALLOC_NOBUSY);
		if (rv != VM_PAGER_OK) {
			ret = -EIO;
			goto err_ret;
		}
		to_page = ttm->pages[i];
		if (FUNC3(to_page == NULL)) {
			ret = -ENOMEM;
			goto err_ret;
		}
		FUNC2(from_page, to_page);
	}
	FUNC6(obj);
	FUNC1(obj);

	if (!(ttm->page_flags & TTM_PAGE_FLAG_PERSISTENT_SWAP))
		FUNC4(obj);
	ttm->swap_storage = NULL;
	ttm->page_flags &= ~TTM_PAGE_FLAG_SWAPPED;
	return (0);

err_ret:
	FUNC6(obj);
	FUNC1(obj);
	return (ret);
}