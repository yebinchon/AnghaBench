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
typedef  int u32 ;
struct ecore_ptt {int dummy; } ;
struct TYPE_2__ {int hw_dwords; size_t target; scalar_t__ one_shot_en; int /*<<< orphan*/  hw_id_mask; } ;
struct dbg_tools_data {TYPE_1__ bus; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef  int /*<<< orphan*/  hw_id_mask_str ;

/* Variables and functions */
 size_t DBG_BUS_TARGET_ID_NIG ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 scalar_t__ FUNC1 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ecore_hwfn*,int*,int) ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ; 
 int FUNC5 (int*,int,char*,int) ; 
 int FUNC6 (int*,int,char*,int) ; 
 int FUNC7 (int*,int,char*,char*) ; 
 char** s_dbg_target_names ; 

__attribute__((used)) static u32 FUNC8(struct ecore_hwfn *p_hwfn,
							  struct ecore_ptt *p_ptt,
							  u32 *dump_buf,
							  bool dump)
{
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	char hw_id_mask_str[16];
	u32 offset = 0;

	if (FUNC1(hw_id_mask_str, sizeof(hw_id_mask_str), "0x%x", dev_data->bus.hw_id_mask) < 0)
		FUNC0(p_hwfn, true, "Unexpected debug error: invalid HW ID mask\n");

	/* Dump global params */
	offset += FUNC4(p_hwfn, p_ptt, dump_buf + offset, dump, 5);
	offset += FUNC7(dump_buf + offset, dump, "dump-type", "debug-bus");
	offset += FUNC7(dump_buf + offset, dump, "wrap-mode", dev_data->bus.one_shot_en ? "one-shot" : "wrap-around");
	offset += FUNC5(dump_buf + offset, dump, "hw-dwords", dev_data->bus.hw_dwords);
	offset += FUNC7(dump_buf + offset, dump, "hw-id-mask", hw_id_mask_str);
	offset += FUNC7(dump_buf + offset, dump, "target", s_dbg_target_names[dev_data->bus.target]);

	offset += FUNC3(p_hwfn, dump_buf + offset, dump);

	if (dev_data->bus.target != DBG_BUS_TARGET_ID_NIG) {
		u32 recorded_dwords = 0;
		
		if (dump)
			recorded_dwords = FUNC2(p_hwfn, p_ptt, OSAL_NULL, false);

		offset += FUNC6(dump_buf + offset, dump, "bus_data", 1);
		offset += FUNC5(dump_buf + offset, dump, "size", recorded_dwords);
	}

	return offset;
}