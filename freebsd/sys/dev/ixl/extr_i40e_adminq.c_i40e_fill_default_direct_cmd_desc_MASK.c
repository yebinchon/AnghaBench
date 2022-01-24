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
typedef  int /*<<< orphan*/  u16 ;
struct i40e_aq_desc {void* flags; void* opcode; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I40E_AQ_FLAG_SI ; 
 int /*<<< orphan*/  I40E_NONDMA_MEM ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(struct i40e_aq_desc *desc,
				       u16 opcode)
{
	/* zero out the desc */
	FUNC1((void *)desc, 0, sizeof(struct i40e_aq_desc),
		    I40E_NONDMA_MEM);
	desc->opcode = FUNC0(opcode);
	desc->flags = FUNC0(I40E_AQ_FLAG_SI);
}