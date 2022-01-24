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
typedef  int uint32_t ;
struct pmc_mdep {int dummy; } ;

/* Variables and functions */
 int ARMV7_PMNC_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct pmc_mdep *md, int cpu)
{
	uint32_t pmnc;

	pmnc = FUNC1();
	pmnc &= ~ARMV7_PMNC_ENABLE;
	FUNC2(pmnc);

	pmnc = 0xffffffff;
	FUNC0(pmnc);
	FUNC3(pmnc);
	FUNC4(pmnc);

	return 0;
}