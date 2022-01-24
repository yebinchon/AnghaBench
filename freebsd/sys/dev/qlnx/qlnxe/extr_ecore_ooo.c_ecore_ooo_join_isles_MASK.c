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
struct ecore_ooo_info {int /*<<< orphan*/  free_isles_list; int /*<<< orphan*/  ready_buffers_list; int /*<<< orphan*/  cur_isles_number; } ;
struct ecore_ooo_archipelago {int /*<<< orphan*/  isles_list; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* OSAL_NULL ; 
 struct ecore_ooo_archipelago* FUNC4 (struct ecore_ooo_info*,int /*<<< orphan*/ ) ; 
 struct ecore_ooo_isle* FUNC5 (struct ecore_hwfn*,struct ecore_ooo_info*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC6(struct ecore_hwfn *p_hwfn,
			  struct ecore_ooo_info *p_ooo_info,
			  u32 cid, u8 left_isle)
{
	struct ecore_ooo_archipelago *p_archipelago = OSAL_NULL;
	struct ecore_ooo_isle *p_right_isle = OSAL_NULL;
	struct ecore_ooo_isle *p_left_isle = OSAL_NULL;

	p_right_isle = FUNC5(p_hwfn, p_ooo_info, cid,
					  left_isle + 1);
	if (!p_right_isle) {
		FUNC0(p_hwfn, true,
			 "Right isle %d is not found(cid %d)\n",
			 left_isle + 1, cid);
		return;
	}
	p_archipelago = FUNC4(p_ooo_info, cid);
	FUNC2(&p_right_isle->list_entry,
			      &p_archipelago->isles_list);
	p_ooo_info->cur_isles_number--;
	if (left_isle) {
		p_left_isle = FUNC5(p_hwfn, p_ooo_info, cid,
						 left_isle);
		if (!p_left_isle) {
			FUNC0(p_hwfn, true,
				 "Left isle %d is not found(cid %d)\n",
				 left_isle, cid);
			return;
		}
		FUNC3(&p_right_isle->buffers_list,
					  &p_left_isle->buffers_list);
	} else {
		FUNC3(&p_right_isle->buffers_list,
					  &p_ooo_info->ready_buffers_list);
	}
	FUNC1(&p_right_isle->list_entry,
			   &p_ooo_info->free_isles_list);
}