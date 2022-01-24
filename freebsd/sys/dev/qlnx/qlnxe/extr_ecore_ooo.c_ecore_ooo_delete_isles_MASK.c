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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ooo_isle {int /*<<< orphan*/  list_entry; int /*<<< orphan*/  buffers_list; } ;
struct ecore_ooo_info {int /*<<< orphan*/  free_isles_list; int /*<<< orphan*/  cur_isles_number; int /*<<< orphan*/  free_buffers_list; } ;
struct ecore_ooo_archipelago {int /*<<< orphan*/  isles_list; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* OSAL_NULL ; 
 struct ecore_ooo_archipelago* FUNC5 (struct ecore_ooo_info*,int /*<<< orphan*/ ) ; 
 struct ecore_ooo_isle* FUNC6 (struct ecore_hwfn*,struct ecore_ooo_info*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC7(struct ecore_hwfn *p_hwfn,
			   struct ecore_ooo_info *p_ooo_info,
			   u32 cid,
			   u8 drop_isle,
			   u8 drop_size)
{
	struct ecore_ooo_archipelago *p_archipelago = OSAL_NULL;
	struct ecore_ooo_isle *p_isle = OSAL_NULL;
	u8 isle_idx;

	p_archipelago = FUNC5(p_ooo_info, cid);
	for (isle_idx = 0; isle_idx < drop_size; isle_idx++) {
		p_isle = FUNC6(p_hwfn, p_ooo_info,
					    cid, drop_isle);
		if (!p_isle) {
			FUNC0(p_hwfn, true,
				 "Isle %d is not found(cid %d)\n",
				 drop_isle, cid);
			return;
		}
		if (FUNC1(&p_isle->buffers_list)) {
			FUNC0(p_hwfn, true,
				 "Isle %d is empty(cid %d)\n",
				 drop_isle, cid);
		} else {
			FUNC4(&p_isle->buffers_list,
					&p_ooo_info->free_buffers_list);
		}
#if defined(_NTDDK_)
#pragma warning(suppress : 6011)
#endif
		FUNC3(&p_isle->list_entry,
				      &p_archipelago->isles_list);
		p_ooo_info->cur_isles_number--;
		FUNC2(&p_isle->list_entry,
				   &p_ooo_info->free_isles_list);
	}
}