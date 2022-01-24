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
struct ahci_controller_irq {int r_irq_rid; struct ahci_controller* ctlr; } ;
struct ahci_controller {int /*<<< orphan*/  r_mem; TYPE_1__* interrupt; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* function ) (void*) ;void* argument; } ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_IS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void
FUNC3(void *data)
{
	struct ahci_controller_irq *irq = data;
	struct ahci_controller *ctlr = irq->ctlr;
	void *arg;
	int unit;

	unit = irq->r_irq_rid - 1;
	/* Some controllers have edge triggered IS. */
	FUNC0(ctlr->r_mem, AHCI_IS, 1 << unit);
	if ((arg = ctlr->interrupt[unit].argument))
		ctlr->interrupt[unit].function(arg);
	FUNC1(ctlr->r_mem, AHCI_IS);
}