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
struct ppb_data {int /*<<< orphan*/  ppc_lock; int /*<<< orphan*/ * ppc_irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t) ; 
 int /*<<< orphan*/  PPC_IVAR_INTR_HANDLER ; 
 int /*<<< orphan*/  PPC_IVAR_LOCK ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct ppb_data* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ppbus_intr ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ppb_data *ppb = FUNC6(dev);
	int error, rid;

	error = FUNC0(FUNC5(dev), dev, PPC_IVAR_LOCK,
	    (uintptr_t *)&ppb->ppc_lock);
	if (error) {
		FUNC7(dev, "Unable to fetch parent's lock\n");
		return (error);
	}

	rid = 0;
	ppb->ppc_irq_res = FUNC2(dev, SYS_RES_IRQ, &rid,
	    RF_SHAREABLE);
	if (ppb->ppc_irq_res != NULL) {
		FUNC8(ppb->ppc_lock);
		error = FUNC1(FUNC5(dev), dev,
		    PPC_IVAR_INTR_HANDLER, (uintptr_t)&ppbus_intr);
		FUNC9(ppb->ppc_lock);
		if (error) {
			FUNC7(dev, "Unable to set interrupt handler\n");
			return (error);
		}
	}

	/* Locate our children */
	FUNC4(dev);

#ifndef DONTPROBE_1284
	/* detect IEEE1284 compliant devices */
	FUNC8(ppb->ppc_lock);
	FUNC10(dev);
	FUNC9(ppb->ppc_lock);
#endif /* !DONTPROBE_1284 */

	/* launch attachment of the added children */
	FUNC3(dev);

	return (0);
}