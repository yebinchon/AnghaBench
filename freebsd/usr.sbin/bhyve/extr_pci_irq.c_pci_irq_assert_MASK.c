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
struct pirq {int active_count; int reg; int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int pirq_pin; int /*<<< orphan*/  ioapic_irq; } ;
struct pci_devinst {TYPE_1__ pi_lintr; int /*<<< orphan*/  pi_vmctx; } ;

/* Variables and functions */
 int PIRQ_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct pirq*) ; 
 scalar_t__ FUNC2 (int) ; 
 struct pirq* pirqs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC7(struct pci_devinst *pi)
{
	struct pirq *pirq;

	if (pi->pi_lintr.pirq_pin > 0) {
		FUNC0(pi->pi_lintr.pirq_pin <= FUNC1(pirqs));
		pirq = &pirqs[pi->pi_lintr.pirq_pin - 1];
		FUNC3(&pirq->lock);
		pirq->active_count++;
		if (pirq->active_count == 1 && FUNC2(pirq->reg)) {
			FUNC6(pi->pi_vmctx, pirq->reg & PIRQ_IRQ,
			    pi->pi_lintr.ioapic_irq);
			FUNC4(&pirq->lock);
			return;
		}
		FUNC4(&pirq->lock);
	}
	FUNC5(pi->pi_vmctx, pi->pi_lintr.ioapic_irq);
}