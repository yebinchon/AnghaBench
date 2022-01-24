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
struct ecore_hwfn {int /*<<< orphan*/  p_dpc_ptt; } ;
struct dbg_attn_block_result {int dummy; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef  enum dbg_attn_type { ____Placeholder_dbg_attn_type } dbg_attn_type ;
typedef  enum block_id { ____Placeholder_block_id } block_id ;
typedef  int /*<<< orphan*/  attn_results ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct dbg_attn_block_result*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct dbg_attn_block_result*) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct dbg_attn_block_result*) ; 
 int FUNC5 (struct ecore_hwfn*,int /*<<< orphan*/ ,int,int,int,struct dbg_attn_block_result*) ; 

__attribute__((used)) static void FUNC6(struct ecore_hwfn *p_hwfn,
				 enum block_id id, enum dbg_attn_type type,
				 bool b_clear)
{
	struct dbg_attn_block_result attn_results;
	enum dbg_status status;

	FUNC1(&attn_results, 0, sizeof(attn_results));

	status = FUNC5(p_hwfn, p_hwfn->p_dpc_ptt, id, type,
				     b_clear, &attn_results);
#ifdef ATTN_DESC
	if (status != DBG_STATUS_OK)
		DP_NOTICE(p_hwfn, true,
			  "Failed to parse attention information [status: %s]\n",
			  ecore_dbg_get_status_str(status));
	else
		ecore_dbg_parse_attn(p_hwfn, &attn_results);
#else
	if (status != DBG_STATUS_OK)
		FUNC0(p_hwfn, true,
			  "Failed to parse attention information [status: %d]\n",
			  status);
	else
		FUNC4(p_hwfn, &attn_results);
#endif
}