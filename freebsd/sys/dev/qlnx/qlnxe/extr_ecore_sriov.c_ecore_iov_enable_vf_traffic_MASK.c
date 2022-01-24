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
struct ecore_vf_info {int dummy; } ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*,struct ecore_ptt*,struct ecore_vf_info*,int) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn,
					struct ecore_ptt *p_ptt,
					struct ecore_vf_info *vf)
{
	/* Reset vf in IGU - interrupts are still disabled */
	FUNC1(p_hwfn, p_ptt, vf);

	FUNC2(p_hwfn, p_ptt, vf, 1);

	/* Permission Table */
	FUNC0(p_hwfn, p_ptt, vf, true);
}