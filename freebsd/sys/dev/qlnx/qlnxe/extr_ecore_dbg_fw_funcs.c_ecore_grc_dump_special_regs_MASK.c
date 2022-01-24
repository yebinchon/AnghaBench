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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSAL_NULL ; 
 int /*<<< orphan*/  RDIF_REG_DEBUG_ERROR_INFO ; 
 int /*<<< orphan*/  RDIF_REG_DEBUG_ERROR_INFO_SIZE ; 
 int /*<<< orphan*/  TDIF_REG_DEBUG_ERROR_INFO ; 
 int /*<<< orphan*/  TDIF_REG_DEBUG_ERROR_INFO_SIZE ; 
 int FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int*,int,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct ecore_hwfn *p_hwfn,
									   struct ecore_ptt *p_ptt,
									   u32 *dump_buf,
									   bool dump)
{
	u32 offset = 0;

	offset += FUNC2(dump_buf, dump, 2, "eng", -1, OSAL_NULL, OSAL_NULL);

	/* Dump R/TDIF_REG_DEBUG_ERROR_INFO_SIZE (every 8'th register should be
	 * skipped).
	 */
	offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, FUNC0(RDIF_REG_DEBUG_ERROR_INFO), RDIF_REG_DEBUG_ERROR_INFO_SIZE, 7, 1);
	offset += FUNC1(p_hwfn, p_ptt, dump_buf + offset, dump, FUNC0(TDIF_REG_DEBUG_ERROR_INFO), TDIF_REG_DEBUG_ERROR_INFO_SIZE, 7, 1);

	return offset;
}