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
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;
typedef  enum BAR_ID { ____Placeholder_BAR_ID } BAR_ID ;

/* Variables and functions */
 int BAR_ID_0 ; 
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int PGLUE_B_REG_PF_BAR0_SIZE ; 
 int PGLUE_B_REG_PF_BAR1_SIZE ; 
 int FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int) ; 
 int FUNC4 (struct ecore_hwfn*,int) ; 

__attribute__((used)) static u32 FUNC5(struct ecore_hwfn *p_hwfn,
			     struct ecore_ptt *p_ptt,
			     enum BAR_ID bar_id)
{
	u32 bar_reg = (bar_id == BAR_ID_0 ?
		       PGLUE_B_REG_PF_BAR0_SIZE : PGLUE_B_REG_PF_BAR1_SIZE);
	u32 val;

	if (FUNC2(p_hwfn->p_dev))
		return FUNC4(p_hwfn, bar_id);

	val = FUNC3(p_hwfn, p_ptt, bar_reg);
	if (val)
		return 1 << (val + 15);

	/* The above registers were updated in the past only in CMT mode. Since
	 * they were found to be useful MFW started updating them from 8.7.7.0.
	 * In older MFW versions they are set to 0 which means disabled.
	 */
	if (FUNC1(p_hwfn->p_dev)) {
		FUNC0(p_hwfn,
			"BAR size not configured. Assuming BAR size of 256kB for GRC and 512kB for DB\n");
		return BAR_ID_0 ? 256 * 1024 : 512 * 1024;
	} else {
		FUNC0(p_hwfn,
			"BAR size not configured. Assuming BAR size of 512kB for GRC and 512kB for DB\n");
		return 512 * 1024;
	}
}