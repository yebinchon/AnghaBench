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
typedef  int u64 ;
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int /*<<< orphan*/  A_SG_CONTROL ; 
 int EBUSY ; 
 int EINVAL ; 
 int F_CONTEXT_CMD_BUSY ; 
 unsigned int F_ONEINTMULTQ ; 
 int /*<<< orphan*/  F_RESPONSEQ ; 
 unsigned int F_RQ_INTR_EN ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC8(adapter_t *adapter, unsigned int id, int irq_vec_idx,
			 u64 base_addr, unsigned int size,
			 unsigned int fl_thres, int gen, unsigned int cidx)
{
	unsigned int ctrl, intr = 0;

	if (base_addr & 0xfff)     /* must be 4K aligned */
		return -EINVAL;
	if (FUNC5(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	base_addr >>= 12;
	FUNC7(adapter, A_SG_CONTEXT_DATA0, FUNC2(size) |
		     FUNC1(cidx));
	FUNC7(adapter, A_SG_CONTEXT_DATA1, (u32)base_addr);
	base_addr >>= 32;
        ctrl = FUNC5(adapter, A_SG_CONTROL);
        if ((irq_vec_idx > 0) ||
		((irq_vec_idx == 0) && !(ctrl & F_ONEINTMULTQ)))
                	intr = F_RQ_INTR_EN;
        if (irq_vec_idx >= 0)
                intr |= FUNC4(irq_vec_idx);
	FUNC7(adapter, A_SG_CONTEXT_DATA2,
		     FUNC0((u32)base_addr) | intr | FUNC3(gen));
	FUNC7(adapter, A_SG_CONTEXT_DATA3, fl_thres);
	return FUNC6(adapter, id, F_RESPONSEQ);
}