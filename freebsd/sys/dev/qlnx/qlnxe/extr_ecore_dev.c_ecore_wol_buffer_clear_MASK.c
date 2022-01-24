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
typedef  int /*<<< orphan*/  u32 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIG_REG_WAKE_BUFFER_CLEAR_BB ; 
 int /*<<< orphan*/  WOL_REG_WAKE_BUFFER_CLEAR_K2_E5 ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/  const,int) ; 

void FUNC4(struct ecore_hwfn *p_hwfn,
			    struct ecore_ptt *p_ptt)
{
	const u32 wake_buffer_clear_offset =
		FUNC1(p_hwfn->p_dev) ?
		NIG_REG_WAKE_BUFFER_CLEAR_BB : WOL_REG_WAKE_BUFFER_CLEAR_K2_E5;

	FUNC0(p_hwfn->p_dev,
		"ecore_wol_buffer_clear: reset "
		"REG_WAKE_BUFFER_CLEAR offset=0x%08x\n",
		wake_buffer_clear_offset);

	if (FUNC1(p_hwfn->p_dev)) {
		FUNC3(p_hwfn, p_ptt, wake_buffer_clear_offset, 1);
		FUNC3(p_hwfn, p_ptt, wake_buffer_clear_offset, 0);
	} else {
		FUNC2(p_hwfn, p_ptt, wake_buffer_clear_offset, 1);
		FUNC2(p_hwfn, p_ptt, wake_buffer_clear_offset, 0);
	}
}