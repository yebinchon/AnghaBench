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
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_CONTEXT_CMD ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK0 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK1 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK2 ; 
 int /*<<< orphan*/  A_SG_CONTEXT_MASK3 ; 
 int /*<<< orphan*/  F_CONTEXT_CMD_BUSY ; 
 unsigned int F_RESPONSEQ ; 
 int /*<<< orphan*/  SG_CONTEXT_CMD_ATTEMPTS ; 
 unsigned int FUNC0 (unsigned int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(adapter_t *adapter, unsigned int id,
				unsigned int type)
{
	if (type == F_RESPONSEQ) {
		/*
		 * Can't write the Response Queue Context bits for
		 * Interrupt Armed or the Reserve bits after the chip
		 * has been initialized out of reset.  Writing to these
		 * bits can confuse the hardware.
		 */
		FUNC3(adapter, A_SG_CONTEXT_MASK0, 0xffffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK1, 0xffffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK2, 0x17ffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK3, 0xffffffff);
	} else {
		FUNC3(adapter, A_SG_CONTEXT_MASK0, 0xffffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK1, 0xffffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK2, 0xffffffff);
		FUNC3(adapter, A_SG_CONTEXT_MASK3, 0xffffffff);
	}
	FUNC3(adapter, A_SG_CONTEXT_CMD,
		     FUNC1(1) | type | FUNC0(id));
	return FUNC2(adapter, A_SG_CONTEXT_CMD, F_CONTEXT_CMD_BUSY,
			       0, SG_CONTEXT_CMD_ATTEMPTS, 1);
}