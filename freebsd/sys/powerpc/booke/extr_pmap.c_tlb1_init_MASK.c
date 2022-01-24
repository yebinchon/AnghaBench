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
typedef  int vm_paddr_t ;
typedef  void* vm_offset_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int MAS1_TSIZE_MASK ; 
 int MAS1_TSIZE_SHIFT ; 
 int MAS3_RPN ; 
 int MAS7_RPN ; 
 int /*<<< orphan*/  SPR_MAS0 ; 
 int /*<<< orphan*/  SPR_MAS1 ; 
 int /*<<< orphan*/  SPR_MAS2 ; 
 int /*<<< orphan*/  SPR_MAS3 ; 
 int /*<<< orphan*/  SPR_MAS7 ; 
 int kernload ; 
 int /*<<< orphan*/  kernsize ; 
 int /*<<< orphan*/  kernstart ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void
FUNC8()
{
	vm_offset_t mas2;
	uint32_t mas0, mas1, mas3, mas7;
	uint32_t tsz;

	FUNC5();

	mas0 = FUNC1(1) | FUNC0(0);
	FUNC3(SPR_MAS0, mas0);
	__asm __volatile("isync; tlbre");

	mas1 = FUNC2(SPR_MAS1);
	mas2 = FUNC2(SPR_MAS2);
	mas3 = FUNC2(SPR_MAS3);
	mas7 = FUNC2(SPR_MAS7);

	kernload =  ((vm_paddr_t)(mas7 & MAS7_RPN) << 32) |
	    (mas3 & MAS3_RPN);

	tsz = (mas1 & MAS1_TSIZE_MASK) >> MAS1_TSIZE_SHIFT;
	kernsize += (tsz > 0) ? FUNC7(tsz) : 0;
	kernstart = FUNC6(mas2);

	/* Setup TLB miss defaults */
	FUNC4();
}