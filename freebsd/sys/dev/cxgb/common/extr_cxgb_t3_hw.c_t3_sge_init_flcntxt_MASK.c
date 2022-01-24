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
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_DATA3 ; 
 int EBUSY ; 
 int EINVAL ; 
 int F_CONTEXT_CMD_BUSY ; 
 int /*<<< orphan*/  F_FREELIST ; 
 unsigned int M_FL_ENTRY_SIZE_LO ; 
 unsigned int M_FL_INDEX_LO ; 
 int S_FL_ENTRY_SIZE_LO ; 
 int FUNC0 (int) ; 
 int FUNC1 (unsigned int) ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (unsigned int) ; 
 int FUNC7 (unsigned int) ; 
 int FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC12(adapter_t *adapter, unsigned int id, int gts_enable,
			u64 base_addr, unsigned int size, unsigned int bsize,
			unsigned int cong_thres, int gen, unsigned int cidx)
{
	if (base_addr & 0xfff)     /* must be 4K aligned */
		return -EINVAL;
	if (FUNC9(adapter, A_SG_CONTEXT_CMD) & F_CONTEXT_CMD_BUSY)
		return -EBUSY;

	base_addr >>= 12;
	FUNC11(adapter, A_SG_CONTEXT_DATA0, (u32)base_addr);
	base_addr >>= 32;
	FUNC11(adapter, A_SG_CONTEXT_DATA1,
		     FUNC0((u32)base_addr) |
		     FUNC7(cidx & M_FL_INDEX_LO));
	FUNC11(adapter, A_SG_CONTEXT_DATA2, FUNC8(size) |
		     FUNC4(gen) | FUNC6(cidx >> 12) |
		     FUNC3(bsize & M_FL_ENTRY_SIZE_LO));
	FUNC11(adapter, A_SG_CONTEXT_DATA3,
		     FUNC2(bsize >> (32 - S_FL_ENTRY_SIZE_LO)) |
		     FUNC1(cong_thres) | FUNC5(gts_enable));
	return FUNC10(adapter, id, F_FREELIST);
}