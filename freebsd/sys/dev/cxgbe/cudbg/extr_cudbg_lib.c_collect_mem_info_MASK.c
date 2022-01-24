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
typedef  int u32 ;
typedef  void* u16 ;
struct cudbg_init {struct adapter* adap; } ;
struct card_mem {int mem_flag; void* size_edc1; void* size_edc0; void* size_mc1; void* size_mc0; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_MA_EDRAM0_BAR ; 
 int /*<<< orphan*/  A_MA_EDRAM1_BAR ; 
 int /*<<< orphan*/  A_MA_EXT_MEMORY0_BAR ; 
 int /*<<< orphan*/  A_MA_EXT_MEMORY1_BAR ; 
 int /*<<< orphan*/  A_MA_EXT_MEMORY_BAR ; 
 int /*<<< orphan*/  A_MA_TARGET_MEM_ENABLE ; 
 int EDC0_FLAG ; 
 int EDC1_FLAG ; 
 int F_EDRAM0_ENABLE ; 
 int F_EDRAM1_ENABLE ; 
 int F_EXT_MEM0_ENABLE ; 
 int F_EXT_MEM1_ENABLE ; 
 int F_EXT_MEM_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int MC0_FLAG ; 
 int MC1_FLAG ; 
 scalar_t__ FUNC5 (struct adapter*) ; 
 int FUNC6 (struct adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cudbg_init *pdbg_init,
			     struct card_mem *mem_info)
{
	struct adapter *padap = pdbg_init->adap;
	u32 value;
	int t4 = 0;

	if (FUNC5(padap))
		t4 = 1;

	if (t4) {
		value = FUNC6(padap, A_MA_EXT_MEMORY_BAR);
		value = FUNC4(value);
		mem_info->size_mc0 = (u16)value;  /* size in MB */

		value = FUNC6(padap, A_MA_TARGET_MEM_ENABLE);
		if (value & F_EXT_MEM_ENABLE)
			mem_info->mem_flag |= (1 << MC0_FLAG); /* set mc0 flag
								  bit */
	} else {
		value = FUNC6(padap, A_MA_EXT_MEMORY0_BAR);
		value = FUNC2(value);
		mem_info->size_mc0 = (u16)value;

		value = FUNC6(padap, A_MA_EXT_MEMORY1_BAR);
		value = FUNC3(value);
		mem_info->size_mc1 = (u16)value;

		value = FUNC6(padap, A_MA_TARGET_MEM_ENABLE);
		if (value & F_EXT_MEM0_ENABLE)
			mem_info->mem_flag |= (1 << MC0_FLAG);
		if (value & F_EXT_MEM1_ENABLE)
			mem_info->mem_flag |= (1 << MC1_FLAG);
	}

	value = FUNC6(padap, A_MA_EDRAM0_BAR);
	value = FUNC0(value);
	mem_info->size_edc0 = (u16)value;

	value = FUNC6(padap, A_MA_EDRAM1_BAR);
	value = FUNC1(value);
	mem_info->size_edc1 = (u16)value;

	value = FUNC6(padap, A_MA_TARGET_MEM_ENABLE);
	if (value & F_EDRAM0_ENABLE)
		mem_info->mem_flag |= (1 << EDC0_FLAG);
	if (value & F_EDRAM1_ENABLE)
		mem_info->mem_flag |= (1 << EDC1_FLAG);

}