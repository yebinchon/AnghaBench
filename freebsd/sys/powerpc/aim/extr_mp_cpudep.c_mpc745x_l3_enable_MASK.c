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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int L3CR_L3CLKEN ; 
 int L3CR_L3E ; 
 int L3CR_L3I ; 
 int L3CR_L3PE ; 
 int /*<<< orphan*/  SPR_L3CR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static register_t
FUNC4(register_t l3cr_config)
{
	register_t ccr;

	ccr = FUNC1(SPR_L3CR);
	if (ccr & L3CR_L3E)
		return (ccr);

	/* Configure L3 cache. */
	ccr = l3cr_config & ~(L3CR_L3E | L3CR_L3I | L3CR_L3PE | L3CR_L3CLKEN);
	FUNC2(SPR_L3CR, ccr);
	ccr |= 0x4000000;       /* Magic, but documented. */
	FUNC2(SPR_L3CR, ccr);
	ccr |= L3CR_L3CLKEN;
	FUNC2(SPR_L3CR, ccr);
	FUNC2(SPR_L3CR, ccr | L3CR_L3I);
	while (FUNC1(SPR_L3CR) & L3CR_L3I)
		;
	FUNC2(SPR_L3CR, ccr & ~L3CR_L3CLKEN);
	FUNC3();
	FUNC0(100);
	FUNC2(SPR_L3CR, ccr);
	FUNC3();
	FUNC0(100);
	ccr |= L3CR_L3E;
	FUNC2(SPR_L3CR, ccr);
	FUNC3();

	return(ccr);
}