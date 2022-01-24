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
typedef  int u32 ;
struct mcp_trace {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct dbg_tools_data {scalar_t__ platform_id; } ;
struct ecore_hwfn {struct dbg_tools_data dbg_info; } ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int /*<<< orphan*/  BYTES_IN_DWORD ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DBG_GRC_PARAM_NO_MCP ; 
 int DBG_STATUS_NVRAM_GET_IMAGE_FAILED ; 
 int DBG_STATUS_OK ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,int,char*) ; 
 scalar_t__ FUNC3 (struct ecore_hwfn*) ; 
 scalar_t__ PLATFORM_ASIC ; 
 int FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int) ; 
 int FUNC5 (int*,int,int) ; 
 int FUNC6 (int*,int,char*,int) ; 
 int FUNC7 (int*,int,char*,int) ; 
 int FUNC8 (int*,int,char*,char*) ; 
 int FUNC9 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ecore_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 scalar_t__ FUNC12 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int FUNC13 (struct ecore_hwfn*,struct ecore_ptt*,int*,int*) ; 
 int FUNC14 (struct ecore_hwfn*,struct ecore_ptt*,int,int*,int*,int*) ; 
 int FUNC15 (struct ecore_hwfn*,struct ecore_ptt*,int,int,int*) ; 

__attribute__((used)) static enum dbg_status FUNC16(struct ecore_hwfn *p_hwfn,
											struct ecore_ptt *p_ptt,
											u32 *dump_buf,
											bool dump,
											u32 *num_dumped_dwords)
{
	u32 trace_meta_offset_bytes = 0, trace_meta_size_bytes = 0, trace_meta_size_dwords = 0;
	u32 trace_data_grc_addr, trace_data_size_bytes, trace_data_size_dwords;
	struct dbg_tools_data *dev_data = &p_hwfn->dbg_info;
	u32 running_bundle_id, offset = 0;
	enum dbg_status status;
	bool mcp_access;
	int halted = 0;

	*num_dumped_dwords = 0;

	mcp_access = dev_data->platform_id == PLATFORM_ASIC && !FUNC10(p_hwfn, DBG_GRC_PARAM_NO_MCP);

	/* Get trace data info */
	status = FUNC13(p_hwfn, p_ptt, &trace_data_grc_addr, &trace_data_size_bytes);
	if (status != DBG_STATUS_OK)
		return status;

	/* Dump global params */
	offset += FUNC4(p_hwfn, p_ptt, dump_buf + offset, dump, 1);
	offset += FUNC8(dump_buf + offset, dump, "dump-type", "mcp-trace");

	/* Halt MCP while reading from scratchpad so the read data will be
	 * consistent. if halt fails, MCP trace is taken anyway, with a small
	 * risk that it may be corrupt.
	 */
	if (dump && mcp_access) {
		halted = !FUNC11(p_hwfn, p_ptt);
		if (!halted)
			FUNC2(p_hwfn, false, "MCP halt failed!\n");
	}

	/* Find trace data size */
	trace_data_size_dwords = FUNC1(trace_data_size_bytes + sizeof(struct mcp_trace), BYTES_IN_DWORD);

	/* Dump trace data section header and param */
	offset += FUNC7(dump_buf + offset, dump, "mcp_trace_data", 1);
	offset += FUNC6(dump_buf + offset, dump, "size", trace_data_size_dwords);

	/* Read trace data from scratchpad into dump buffer */
	offset += FUNC9(p_hwfn, p_ptt, dump_buf + offset, dump, FUNC0(trace_data_grc_addr), trace_data_size_dwords, false);

	/* Resume MCP (only if halt succeeded) */
	if (halted && FUNC12(p_hwfn, p_ptt))
		FUNC2(p_hwfn, false, "Failed to resume MCP after halt!\n");

	/* Dump trace meta section header */
	offset += FUNC7(dump_buf + offset, dump, "mcp_trace_meta", 1);

	/* Read trace meta only if NVRAM access is enabled
	 * (trace_meta_size_bytes is dword-aligned).
	 */
	if (FUNC3(p_hwfn) && mcp_access) {
		status = FUNC14(p_hwfn, p_ptt, trace_data_size_bytes, &running_bundle_id, &trace_meta_offset_bytes, &trace_meta_size_bytes);
		if (status == DBG_STATUS_OK)
			trace_meta_size_dwords = FUNC0(trace_meta_size_bytes);
	}

	/* Dump trace meta size param */
	offset += FUNC6(dump_buf + offset, dump, "size", trace_meta_size_dwords);

	/* Read trace meta image into dump buffer */
	if (dump && trace_meta_size_dwords)
		status = FUNC15(p_hwfn, p_ptt, trace_meta_offset_bytes, trace_meta_size_bytes, dump_buf + offset);
	if (status == DBG_STATUS_OK)
		offset += trace_meta_size_dwords;

	/* Dump last section */
	offset += FUNC5(dump_buf, offset, dump);

	*num_dumped_dwords = offset;

	/* If no mcp access, indicate that the dump doesn't contain the meta
	 * data from NVRAM.
	 */
	return mcp_access ? status : DBG_STATUS_NVRAM_GET_IMAGE_FAILED;
}