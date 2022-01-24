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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {scalar_t__ hw_init_done; int /*<<< orphan*/  p_dev; } ;
struct cau_pi_entry {int /*<<< orphan*/  prod; } ;
typedef  enum ecore_coalescing_fsm { ____Placeholder_ecore_coalescing_fsm } ecore_coalescing_fsm ;

/* Variables and functions */
 int /*<<< orphan*/  CAU_PI_ENTRY_FSM_SEL ; 
 int /*<<< orphan*/  CAU_PI_ENTRY_PI_TIMESET ; 
 scalar_t__ CAU_REG_PI_MEMORY ; 
 scalar_t__ CAU_REG_PI_MEMORY_RT_OFFSET ; 
 int ECORE_COAL_RX_STATE_MACHINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cau_pi_entry*,int /*<<< orphan*/ ,int) ; 
 int PIS_PER_SB_E4 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC5(struct ecore_hwfn *p_hwfn,
				   struct ecore_ptt *p_ptt,
				   u16 igu_sb_id, u32 pi_index,
				   enum ecore_coalescing_fsm coalescing_fsm,
				   u8 timeset)
{
	struct cau_pi_entry pi_entry;
	u32 sb_offset, pi_offset;

	if (FUNC0(p_hwfn->p_dev))
		return;/* @@@TBD MichalK- VF CAU... */

	sb_offset = igu_sb_id * PIS_PER_SB_E4;
	FUNC1(&pi_entry, 0, sizeof(struct cau_pi_entry));

	FUNC2(pi_entry.prod, CAU_PI_ENTRY_PI_TIMESET, timeset);
	if (coalescing_fsm == ECORE_COAL_RX_STATE_MACHINE)
		FUNC2(pi_entry.prod, CAU_PI_ENTRY_FSM_SEL, 0);
	else
		FUNC2(pi_entry.prod, CAU_PI_ENTRY_FSM_SEL, 1);

	pi_offset = sb_offset + pi_index;
	if (p_hwfn->hw_init_done) {
		FUNC4(p_hwfn, p_ptt,
			 CAU_REG_PI_MEMORY + pi_offset * sizeof(u32),
			 *((u32 *)&(pi_entry)));
	} else {
		FUNC3(p_hwfn,
			     CAU_REG_PI_MEMORY_RT_OFFSET + pi_offset,
			     *((u32 *)&(pi_entry)));
	}
}