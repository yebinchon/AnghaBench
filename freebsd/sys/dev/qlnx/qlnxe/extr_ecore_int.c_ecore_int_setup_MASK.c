#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {TYPE_1__* p_sp_sb; int /*<<< orphan*/  p_sb_attn; } ;
struct TYPE_2__ {int /*<<< orphan*/  sb_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ecore_hwfn*,struct ecore_ptt*) ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 

void FUNC3(struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt)
{
	if (!p_hwfn || !p_hwfn->p_sp_sb || !p_hwfn->p_sb_attn)
		return;

	FUNC1(p_hwfn, p_ptt, &p_hwfn->p_sp_sb->sb_info);
	FUNC0(p_hwfn, p_ptt);
	FUNC2(p_hwfn);
}