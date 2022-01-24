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
typedef  size_t u8 ;
typedef  int u32 ;
struct storm_defs {int /*<<< orphan*/  cm_task_st_ctx_rd_addr; int /*<<< orphan*/  cm_task_st_ctx_lid_size; int /*<<< orphan*/  cm_task_ag_ctx_rd_addr; int /*<<< orphan*/  cm_task_ag_ctx_lid_size; int /*<<< orphan*/  cm_conn_st_ctx_rd_addr; int /*<<< orphan*/  cm_conn_st_ctx_lid_size; int /*<<< orphan*/  cm_conn_ag_ctx_rd_addr; int /*<<< orphan*/  cm_conn_ag_ctx_lid_size; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
typedef  enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_GRC_PARAM_NUM_LCIDS ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NUM_LTIDS ; 
 size_t MAX_DBG_STORMS ; 
 int FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int) ; 
 struct storm_defs* s_storm_defs ; 

__attribute__((used)) static u32 FUNC3(struct ecore_hwfn *p_hwfn,
							  struct ecore_ptt *p_ptt,
							  u32 *dump_buf,
							  bool dump)
{
	u32 offset = 0;
	u8 storm_id;

	for (storm_id = 0; storm_id < MAX_DBG_STORMS; storm_id++) {
		struct storm_defs *storm = &s_storm_defs[storm_id];

		if (!FUNC2(p_hwfn, (enum dbg_storms)storm_id))
			continue;

		/* Dump Conn AG context size */
		offset += FUNC0(p_hwfn, p_ptt, dump_buf + offset, dump, "CONN_AG_CTX", FUNC1(p_hwfn, DBG_GRC_PARAM_NUM_LCIDS),
			storm->cm_conn_ag_ctx_lid_size, storm->cm_conn_ag_ctx_rd_addr, storm_id);

		/* Dump Conn ST context size */
		offset += FUNC0(p_hwfn, p_ptt, dump_buf + offset, dump, "CONN_ST_CTX", FUNC1(p_hwfn, DBG_GRC_PARAM_NUM_LCIDS),
			storm->cm_conn_st_ctx_lid_size, storm->cm_conn_st_ctx_rd_addr, storm_id);

		/* Dump Task AG context size */
		offset += FUNC0(p_hwfn, p_ptt, dump_buf + offset, dump, "TASK_AG_CTX", FUNC1(p_hwfn, DBG_GRC_PARAM_NUM_LTIDS),
			storm->cm_task_ag_ctx_lid_size, storm->cm_task_ag_ctx_rd_addr, storm_id);

		/* Dump Task ST context size */
		offset += FUNC0(p_hwfn, p_ptt, dump_buf + offset, dump, "TASK_ST_CTX", FUNC1(p_hwfn, DBG_GRC_PARAM_NUM_LTIDS),
			storm->cm_task_st_ctx_lid_size, storm->cm_task_st_ctx_rd_addr, storm_id);
	}

	return offset;
}