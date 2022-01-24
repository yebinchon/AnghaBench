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
typedef  scalar_t__ vm_offset_t ;

/* Variables and functions */
 int INJ_VECTOR_MASK ; 
 int INJ_WORD_MASK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int QUADRANT_MASK ; 
 int SBT_1MS ; 
 int /*<<< orphan*/  VM_MEMATTR_UNCACHEABLE ; 
 int bit_mask ; 
 int delay_ms ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int quadrant ; 
 int word_mask ; 

__attribute__((used)) static void
FUNC5(int count)
{
	vm_offset_t memory;
	int injected;

	FUNC0((quadrant & ~QUADRANT_MASK) == 0,
	    ("quadrant value is outside of range: %u", quadrant));
	FUNC0(word_mask != 0 && (word_mask & ~INJ_WORD_MASK) == 0,
	    ("word mask value is outside of range: 0x%x", word_mask));
	FUNC0(bit_mask != 0 && (bit_mask & ~INJ_VECTOR_MASK) == 0,
	    ("bit mask value is outside of range: 0x%x", bit_mask));

	memory = FUNC2(PAGE_SIZE, M_WAITOK, 0, ~0,
	    VM_MEMATTR_UNCACHEABLE);

	for (injected = 0; injected < count; injected++) {
		FUNC1((void*)memory, PAGE_SIZE);
		if (delay_ms != 0 && injected != count - 1)
			FUNC4("ecc_ei_inject", delay_ms * SBT_1MS, 0, 0);
	}

	FUNC3(memory, PAGE_SIZE);
}