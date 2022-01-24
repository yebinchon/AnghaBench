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
struct macio_devinfo {int mdi_ninterrupts; int /*<<< orphan*/ * mdi_interrupts; int /*<<< orphan*/  mdi_resources; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  iparent ;
typedef  int /*<<< orphan*/  icells ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int,char*,int*,int) ; 
 int FUNC2 (int,char*,int,void**) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7(phandle_t devnode, struct macio_devinfo *dinfo)
{
	phandle_t iparent;
	int	*intr;
	int	i, nintr;
	int 	icells;

	if (dinfo->mdi_ninterrupts >= 6) {
		FUNC5("macio: device has more than 6 interrupts\n");
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

	if (FUNC1(FUNC3(iparent), "#interrupt-cells", &icells,
	    sizeof(icells)) <= 0)
		icells = 1;

	for (i = 0; i < nintr; i+=icells) {
		u_int irq = FUNC0(iparent, intr[i]);

		FUNC6(&dinfo->mdi_resources, SYS_RES_IRQ,
		    dinfo->mdi_ninterrupts, irq, irq, 1);

		dinfo->mdi_interrupts[dinfo->mdi_ninterrupts] = irq;
		dinfo->mdi_ninterrupts++;
	}
}