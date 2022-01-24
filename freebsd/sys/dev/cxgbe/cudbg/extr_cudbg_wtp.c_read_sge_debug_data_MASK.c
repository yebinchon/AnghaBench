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
typedef  int /*<<< orphan*/  u32 ;
struct cudbg_init {struct adapter* adap; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SGE_DEBUG_DATA_HIGH ; 
 int /*<<< orphan*/  A_SGE_DEBUG_DATA_LOW ; 
 int /*<<< orphan*/  A_SGE_DEBUG_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC3(struct cudbg_init *pdbg_init, u32 *sge_dbg_reg)
{
	struct adapter *padap = pdbg_init->adap;
	u32 value;
	int i = 0;

	for (i = 0; i <= 15; i++) {
		FUNC2(padap, A_SGE_DEBUG_INDEX, (u32)i);
		value = FUNC1(padap, A_SGE_DEBUG_DATA_LOW);
		/*printf("LOW	 0x%08x\n", value);*/
		sge_dbg_reg[(i << 1) | 1] = FUNC0(value);
		value = FUNC1(padap, A_SGE_DEBUG_DATA_HIGH);
		/*printf("HIGH	 0x%08x\n", value);*/
		sge_dbg_reg[(i << 1)] = FUNC0(value);
	}
	return 0;
}