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
typedef  int register_t ;

/* Variables and functions */
 int TLBHI_ASID_MASK ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 unsigned int num_tlbentries ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 

void
FUNC6(void)
{
	register_t asid;
	register_t s;
	unsigned i;

	s = FUNC0();
	asid = FUNC2() & TLBHI_ASID_MASK;

	for (i = FUNC3(); i < num_tlbentries; i++)
		FUNC5(i);

	FUNC4(asid);
	FUNC1(s);
}