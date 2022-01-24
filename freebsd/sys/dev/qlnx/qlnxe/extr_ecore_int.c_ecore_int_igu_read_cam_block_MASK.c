#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct ecore_ptt {int dummy; } ;
struct ecore_igu_block {int igu_sb_id; void* vector_number; void* is_pf; void* function_id; } ;
struct TYPE_4__ {TYPE_1__* p_igu_info; } ;
struct ecore_hwfn {TYPE_2__ hw_info; } ;
struct TYPE_3__ {struct ecore_igu_block* entry; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IGU_MAPPING_LINE_FUNCTION_NUMBER ; 
 int /*<<< orphan*/  IGU_MAPPING_LINE_PF_VALID ; 
 int /*<<< orphan*/  IGU_MAPPING_LINE_VECTOR_NUMBER ; 
 scalar_t__ IGU_REG_MAPPING_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (struct ecore_hwfn*,struct ecore_ptt*,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct ecore_hwfn *p_hwfn,
					 struct ecore_ptt *p_ptt,
					 u16 igu_sb_id)
{
	u32 val = FUNC1(p_hwfn, p_ptt,
			   IGU_REG_MAPPING_MEMORY + sizeof(u32) * igu_sb_id);
	struct ecore_igu_block *p_block;

	p_block = &p_hwfn->hw_info.p_igu_info->entry[igu_sb_id];

	/* Fill the block information */
	p_block->function_id = FUNC0(val,
					 IGU_MAPPING_LINE_FUNCTION_NUMBER);
	p_block->is_pf = FUNC0(val, IGU_MAPPING_LINE_PF_VALID);
	p_block->vector_number = FUNC0(val,
					   IGU_MAPPING_LINE_VECTOR_NUMBER);
	p_block->igu_sb_id = igu_sb_id;
}