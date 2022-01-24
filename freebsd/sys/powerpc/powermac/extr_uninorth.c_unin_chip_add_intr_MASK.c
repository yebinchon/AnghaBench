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
typedef  int /*<<< orphan*/  u_int ;
struct unin_chip_devinfo {int udi_ninterrupts; int /*<<< orphan*/ * udi_interrupts; int /*<<< orphan*/  udi_resources; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  iparent ;
typedef  int /*<<< orphan*/  icells ;

/* Variables and functions */
 int /*<<< orphan*/  INTR_POLARITY_LOW ; 
 int /*<<< orphan*/  INTR_TRIGGER_EDGE ; 
 int /*<<< orphan*/  INTR_TRIGGER_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,void**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC8(phandle_t devnode, struct unin_chip_devinfo *dinfo)
{
	phandle_t iparent;
	int	*intr;
	int	i, nintr;
	int 	icells;

	if (dinfo->udi_ninterrupts >= 6) {
		FUNC6("unin: device has more than 6 interrupts\n");
		return;
	}

	nintr = FUNC2(devnode, "interrupts", sizeof(*intr), 
		(void **)&intr);
	if (nintr == -1) {
		nintr = FUNC2(devnode, "AAPL,interrupts", 
			sizeof(*intr), (void **)&intr);
		if (nintr == -1)
			return;
	}

	if (intr[0] == -1)
		return;

	if (FUNC1(devnode, "interrupt-parent", &iparent, sizeof(iparent))
	    <= 0)
		FUNC4("Interrupt but no interrupt parent!\n");

	if (FUNC3(iparent, "#interrupt-cells", &icells, sizeof(icells))
	    <= 0)
		icells = 1;

	for (i = 0; i < nintr; i+=icells) {
		u_int irq = FUNC0(iparent, intr[i]);

		FUNC7(&dinfo->udi_resources, SYS_RES_IRQ,
		    dinfo->udi_ninterrupts, irq, irq, 1);

		if (icells > 1) {
			FUNC5(irq,
			    (intr[i+1] & 1) ? INTR_TRIGGER_LEVEL :
			    INTR_TRIGGER_EDGE, INTR_POLARITY_LOW);
		}

		dinfo->udi_interrupts[dinfo->udi_ninterrupts] = irq;
		dinfo->udi_ninterrupts++;
	}
}