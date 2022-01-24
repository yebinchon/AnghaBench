#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ cookie; } ;
struct ecore_spq_entry {TYPE_1__ comp_cb; } ;
struct ecore_spq_comp_done {int done; int /*<<< orphan*/  fw_return_code; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int ECORE_SUCCESS ; 
 int ECORE_TIMEOUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int SPQ_BLOCK_DELAY_MAX_ITER ; 
 int /*<<< orphan*/  SPQ_BLOCK_DELAY_US ; 
 int SPQ_BLOCK_SLEEP_MAX_ITER ; 
 int /*<<< orphan*/  SPQ_BLOCK_SLEEP_MS ; 

__attribute__((used)) static enum _ecore_status_t FUNC5(struct ecore_hwfn *p_hwfn,
					      struct ecore_spq_entry *p_ent,
					      u8 *p_fw_ret,
					      bool sleep_between_iter)
{
	struct ecore_spq_comp_done *comp_done;
	u32 iter_cnt;

	comp_done = (struct ecore_spq_comp_done *)p_ent->comp_cb.cookie;
	iter_cnt = sleep_between_iter ? SPQ_BLOCK_SLEEP_MAX_ITER
				      : SPQ_BLOCK_DELAY_MAX_ITER;
#ifndef ASIC_ONLY
	if (FUNC0(p_hwfn->p_dev) && sleep_between_iter)
		iter_cnt *= 5;
#endif

	while (iter_cnt--) {
		FUNC2(p_hwfn);
		FUNC3(p_hwfn->p_dev);
		if (comp_done->done == 1) {
			if (p_fw_ret)
				*p_fw_ret = comp_done->fw_return_code;
			return ECORE_SUCCESS;
		}

		if (sleep_between_iter) {
			FUNC1(SPQ_BLOCK_SLEEP_MS);
		} else {
			FUNC4(SPQ_BLOCK_DELAY_US);
		}
	}

	return ECORE_TIMEOUT;
}