#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  tlb_nentries; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMWIRED_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__ cpuinfo ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  num_tlbentries ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

void
FUNC9(void)
{
	FUNC7();
	FUNC3(&cpuinfo);
	num_tlbentries = cpuinfo.tlb_nentries;
	FUNC6(0);
	FUNC8();
	FUNC6(VMWIRED_ENTRIES);
	FUNC1(&cpuinfo);
	FUNC5();

	FUNC4();
	FUNC2();
	/* Print some info about CPU */
	FUNC0();
}