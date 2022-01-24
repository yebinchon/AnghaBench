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
struct ecore_sb_attn_info {int /*<<< orphan*/  sb_phys; scalar_t__ sb_attn; } ;
struct ecore_hwfn {struct ecore_sb_attn_info* p_sb_attn; int /*<<< orphan*/  p_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ecore_sb_attn_info*) ; 
 struct ecore_sb_attn_info* OSAL_NULL ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_hwfn*) ; 

__attribute__((used)) static void FUNC3(struct ecore_hwfn *p_hwfn)
{
	struct ecore_sb_attn_info *p_sb = p_hwfn->p_sb_attn;

	if (!p_sb)
		return;

	if (p_sb->sb_attn) {
		FUNC0(p_hwfn->p_dev, p_sb->sb_attn,
				       p_sb->sb_phys,
				       FUNC2(p_hwfn));
	}

	FUNC1(p_hwfn->p_dev, p_sb);
	p_hwfn->p_sb_attn = OSAL_NULL;
}