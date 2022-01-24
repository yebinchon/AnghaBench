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
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_REG_INTR_BUFFER_RD_PTR ; 
 int /*<<< orphan*/  DBG_REG_INTR_BUFFER_WR_PTR ; 
 int /*<<< orphan*/  DBG_REG_WRAP_ON_INT_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int,char*) ; 
 int INT_BUF_NUM_OF_LINES ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int,int) ; 
 int FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct ecore_hwfn *p_hwfn,
								  struct ecore_ptt *p_ptt,
								  u32 *dump_buf,
								  bool dump)
{
	u32 last_written_line, offset = 0;

	last_written_line = FUNC2(p_hwfn, p_ptt, DBG_REG_INTR_BUFFER_WR_PTR);

	if (FUNC2(p_hwfn, p_ptt, DBG_REG_WRAP_ON_INT_BUFFER)) {

		/* Internal buffer was wrapped: first dump from write pointer
		 * to buffer end, then dump from buffer start to write pointer.
		 */
		if (last_written_line < INT_BUF_NUM_OF_LINES - 1)
			offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, last_written_line + 1, INT_BUF_NUM_OF_LINES - 1);
		offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, 0, last_written_line);
	}
	else if (last_written_line) {

		/* Internal buffer wasn't wrapped: dump from buffer start until
		 *  write pointer.
		 */
		if (!FUNC2(p_hwfn, p_ptt, DBG_REG_INTR_BUFFER_RD_PTR))
			offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, 0, last_written_line);
		else
			FUNC0(p_hwfn, true, "Unexpected Debug Bus error: internal buffer read pointer is not zero\n");
	}

	return offset;
}