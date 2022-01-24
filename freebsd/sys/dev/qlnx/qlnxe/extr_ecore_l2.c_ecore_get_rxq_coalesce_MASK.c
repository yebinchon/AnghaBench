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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_2__ {int /*<<< orphan*/  queue_id; } ;
struct ecore_queue_cid {int sb_igu_id; TYPE_1__ abs; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct cau_sb_entry {int params; } ;
typedef  scalar_t__ osal_uintptr_t ;
typedef  enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;

/* Variables and functions */
 int BAR0_MAP_REG_USDM_RAM ; 
 scalar_t__ CAU_REG_SB_VAR_MEMORY ; 
 int /*<<< orphan*/  CAU_SB_ENTRY_TIMER_RES0 ; 
 int /*<<< orphan*/  COALESCING_TIMESET_TIMESET ; 
 int /*<<< orphan*/  COALESCING_TIMESET_VALID ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*,int) ; 
 int ECORE_INVAL ; 
 int ECORE_SUCCESS ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 

int FUNC5(struct ecore_hwfn *p_hwfn,
			   struct ecore_ptt *p_ptt,
			   struct ecore_queue_cid *p_cid,
			   u16 *p_rx_coal)
{
	u32 coalesce, address, is_valid;
	struct cau_sb_entry sb_entry;
	u8 timer_res;
	enum _ecore_status_t rc;

	rc = FUNC3(p_hwfn, p_ptt, CAU_REG_SB_VAR_MEMORY +
				 p_cid->sb_igu_id * sizeof(u64),
				 (u64)(osal_uintptr_t)&sb_entry, 2,
				 OSAL_NULL /* default parameters */);
	if (rc != ECORE_SUCCESS) {
		FUNC0(p_hwfn, "dmae_grc2host failed %d\n", rc);
		return rc;
	}

	timer_res = FUNC1(sb_entry.params, CAU_SB_ENTRY_TIMER_RES0);

	address = BAR0_MAP_REG_USDM_RAM +
		  FUNC2(p_cid->abs.queue_id);
	coalesce = FUNC4(p_hwfn, p_ptt, address);

	is_valid = FUNC1(coalesce, COALESCING_TIMESET_VALID);
	if (!is_valid)
		return ECORE_INVAL;

	coalesce = FUNC1(coalesce, COALESCING_TIMESET_TIMESET);
	*p_rx_coal = (u16)(coalesce << timer_res);

	return ECORE_SUCCESS;
}