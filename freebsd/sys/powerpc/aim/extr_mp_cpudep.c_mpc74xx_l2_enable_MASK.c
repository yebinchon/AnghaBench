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
typedef  int uint16_t ;
typedef  int register_t ;

/* Variables and functions */
 int L2CR_L2E ; 
 int L2CR_L2I ; 
 int L2CR_L2IP ; 
#define  MPC7400 129 
#define  MPC7410 128 
 int /*<<< orphan*/  SPR_L2CR ; 
 int FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static register_t
FUNC4(register_t l2cr_config)
{
	register_t ccr, bit;
	uint16_t	vers;

	vers = FUNC0() >> 16;
	switch (vers) {
	case MPC7400:
	case MPC7410:
		bit = L2CR_L2IP;
		break;
	default:
		bit = L2CR_L2I;
		break;
	}

	ccr = FUNC1(SPR_L2CR);
	if (ccr & L2CR_L2E)
		return (ccr);

	/* Configure L2 cache. */
	ccr = l2cr_config & ~L2CR_L2E;
	FUNC2(SPR_L2CR, ccr | L2CR_L2I);
	do {
		ccr = FUNC1(SPR_L2CR);
	} while (ccr & bit);
	FUNC3();
	FUNC2(SPR_L2CR, l2cr_config);
	FUNC3();

	return (l2cr_config);
}