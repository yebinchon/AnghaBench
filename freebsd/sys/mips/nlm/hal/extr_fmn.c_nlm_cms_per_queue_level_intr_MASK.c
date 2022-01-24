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
typedef  int uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int) ; 

void FUNC3(uint64_t base, int qid, int sub_type,
					int intr_val)
{
	uint64_t val;

	val = FUNC1(base, FUNC0(qid));

	val &= ~((0x7ULL << 56) | (0x3ULL << 54));

	val |= (((uint64_t)sub_type<<54) |
		((uint64_t)intr_val<<56));

	FUNC2(base, FUNC0(qid), val);
}