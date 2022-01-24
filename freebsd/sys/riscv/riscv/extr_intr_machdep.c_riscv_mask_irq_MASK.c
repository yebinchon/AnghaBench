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

/* Variables and functions */
#define  IRQ_SOFTWARE_SUPERVISOR 130 
#define  IRQ_SOFTWARE_USER 129 
#define  IRQ_TIMER_SUPERVISOR 128 
 int /*<<< orphan*/  SIE_SSIE ; 
 int /*<<< orphan*/  SIE_STIE ; 
 int /*<<< orphan*/  SIE_USIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,uintptr_t) ; 
 int /*<<< orphan*/  sie ; 

__attribute__((used)) static void
FUNC2(void *source)
{
	uintptr_t irq;

	irq = (uintptr_t)source;

	switch (irq) {
	case IRQ_TIMER_SUPERVISOR:
		FUNC0(sie, SIE_STIE);
		break;
	case IRQ_SOFTWARE_USER:
		FUNC0(sie, SIE_USIE);
		break;
	case IRQ_SOFTWARE_SUPERVISOR:
		FUNC0(sie, SIE_SSIE);
		break;
	default:
		FUNC1("Unknown irq %d\n", irq);
	}
}