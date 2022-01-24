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
struct ppc_data {scalar_t__ res_irq; scalar_t__ res_ioport; scalar_t__ res_drq; int /*<<< orphan*/  ppc_lock; int /*<<< orphan*/  rid_drq; int /*<<< orphan*/  rid_ioport; int /*<<< orphan*/  rid_irq; int /*<<< orphan*/  intr_cookie; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ppc_data* FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(device_t dev)
{
	struct ppc_data *ppc = FUNC0(dev);

	if (ppc->res_irq == 0) {
		return (ENXIO);
	}

	/* detach & delete all children */
	FUNC3(dev);

	if (ppc->res_irq != 0) {
		FUNC2(dev, ppc->res_irq, ppc->intr_cookie);
		FUNC1(dev, SYS_RES_IRQ, ppc->rid_irq,
				     ppc->res_irq);
	}
	if (ppc->res_ioport != 0) {
		FUNC1(dev, SYS_RES_IOPORT, ppc->rid_ioport,
				     ppc->res_ioport);
	}
	if (ppc->res_drq != 0) {
		FUNC1(dev, SYS_RES_DRQ, ppc->rid_drq,
				     ppc->res_drq);
	}

	FUNC4(&ppc->ppc_lock);

	return (0);
}