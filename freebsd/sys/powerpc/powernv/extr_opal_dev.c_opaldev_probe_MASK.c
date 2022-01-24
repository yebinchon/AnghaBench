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
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  pcell_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_PROBE_SPECIFIC ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 () ; 

__attribute__((used)) static int
FUNC13(device_t dev)
{
	phandle_t iparent;
	pcell_t *irqs;
	int i, n_irqs;

	if (!FUNC10(dev, "ibm,opal-v3"))
		return (ENXIO);
	if (FUNC12() != 0)
		return (ENXIO);

	FUNC6(dev, "OPAL Abstraction Firmware");

	/* Manually add IRQs before attaching */
	if (FUNC3(FUNC9(dev), "opal-interrupts")) {
		iparent = FUNC0("/interrupt-controller@0");
		iparent = FUNC4(iparent);

		n_irqs = FUNC2(FUNC9(dev),
                    "opal-interrupts") / sizeof(*irqs);
		irqs = FUNC8(n_irqs * sizeof(*irqs), M_DEVBUF, M_WAITOK);
		FUNC1(FUNC9(dev), "opal-interrupts", irqs,
		    n_irqs * sizeof(*irqs));
		for (i = 0; i < n_irqs; i++)
			FUNC5(dev, SYS_RES_IRQ, i,
			    FUNC11(dev, iparent, 1, &irqs[i]), 1);
		FUNC7(irqs, M_DEVBUF);
	}


	return (BUS_PROBE_SPECIFIC);
}