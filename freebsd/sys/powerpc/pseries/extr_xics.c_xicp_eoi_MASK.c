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
typedef  int uint64_t ;
typedef  int u_int ;
struct xicp_softc {scalar_t__ xics_emu; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  H_EOI ; 
 int MAX_XICP_IRQS ; 
 int /*<<< orphan*/  OPAL_INT_EOI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PSL_HV ; 
 int XICP_IPI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 struct xicp_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hwref ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(device_t dev, u_int irq, void *priv)
{
#ifdef POWERNV
	struct xicp_softc *sc;
#endif
	uint64_t xirr;

	if (irq == MAX_XICP_IRQS) /* Remap IPI interrupt to internal value */
		irq = XICP_IPI;
	xirr = irq | (0xff << 24);

#ifdef POWERNV
	if (mfmsr() & PSL_HV) {
		sc = device_get_softc(dev);
		if (sc->xics_emu)
			opal_call(OPAL_INT_EOI, xirr);
		else
			bus_write_4(xicp_mem_for_cpu(PCPU_GET(hwref)), 4, xirr);
	} else
#endif
		FUNC5(H_EOI, xirr);
}