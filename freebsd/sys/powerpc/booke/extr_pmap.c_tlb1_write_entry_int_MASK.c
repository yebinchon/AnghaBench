#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct tlbwrite_args {int idx; TYPE_1__* e; } ;
struct TYPE_2__ {int mas1; int mas2; int mas3; int mas7; } ;

/* Variables and functions */
#define  FSL_E500mc 131 
#define  FSL_E500v2 130 
#define  FSL_E5500 129 
#define  FSL_E6500 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  SPR_MAS0 ; 
 int /*<<< orphan*/  SPR_MAS1 ; 
 int /*<<< orphan*/  SPR_MAS2 ; 
 int /*<<< orphan*/  SPR_MAS3 ; 
 int /*<<< orphan*/  SPR_MAS7 ; 
 int /*<<< orphan*/  SPR_MAS8 ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 () ; 

__attribute__((used)) static void
FUNC6(void *arg)
{
	struct tlbwrite_args *args = arg;
	uint32_t idx, mas0;

	idx = args->idx;
	if (idx == -1) {
		idx = FUNC5();
		if (idx == -1)
			FUNC4("No free TLB1 entries!\n");
	}
	/* Select entry */
	mas0 = FUNC1(1) | FUNC0(idx);

	FUNC3(SPR_MAS0, mas0);
	FUNC3(SPR_MAS1, args->e->mas1);
	FUNC3(SPR_MAS2, args->e->mas2);
	FUNC3(SPR_MAS3, args->e->mas3);
	switch ((FUNC2() >> 16) & 0xFFFF) {
	case FSL_E500mc:
	case FSL_E5500:
	case FSL_E6500:
		FUNC3(SPR_MAS8, 0);
		/* FALLTHROUGH */
	case FSL_E500v2:
		FUNC3(SPR_MAS7, args->e->mas7);
		break;
	default:
		break;
	}

	__asm __volatile("isync; tlbwe; isync; msync");

}