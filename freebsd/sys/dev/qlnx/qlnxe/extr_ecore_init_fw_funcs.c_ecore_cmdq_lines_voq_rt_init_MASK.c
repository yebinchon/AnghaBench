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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ QM_REG_VOQCRDLINE_RT_OFFSET ; 
 scalar_t__ QM_REG_VOQINITCRDLINE_RT_OFFSET ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ecore_hwfn*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ecore_hwfn *p_hwfn,
										 u8 ext_voq,
										 u16 cmdq_lines)
{
	u32 qm_line_crd;	
		
	qm_line_crd = FUNC2(cmdq_lines);

	FUNC0(p_hwfn, FUNC1(ext_voq), (u32)cmdq_lines);
	FUNC3(p_hwfn, QM_REG_VOQCRDLINE_RT_OFFSET + ext_voq, qm_line_crd);
	FUNC3(p_hwfn, QM_REG_VOQINITCRDLINE_RT_OFFSET + ext_voq, qm_line_crd);
}