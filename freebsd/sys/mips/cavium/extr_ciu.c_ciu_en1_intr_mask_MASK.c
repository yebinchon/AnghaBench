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
typedef  unsigned long long uint64_t ;

/* Variables and functions */
 int CIU_IRQ_EN1_BEGIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 unsigned long long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	uint64_t mask;
	int irq;

	irq = (uintptr_t)arg;
	mask = FUNC2(FUNC0(FUNC1()*2));
	mask &= ~(1ull << (irq - CIU_IRQ_EN1_BEGIN));
	FUNC3(FUNC0(FUNC1()*2), mask);
}