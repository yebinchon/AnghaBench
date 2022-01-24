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
struct xicp_softc {int /*<<< orphan*/  ibm_int_off; } ;
struct xicp_intvec {int cpu; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  cell_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAX_XICP_IRQS ; 
 int /*<<< orphan*/  OPAL_SET_XIVE ; 
 struct xicp_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static void
FUNC5(device_t dev, u_int irq, void *priv)
{
	struct xicp_softc *sc = FUNC1(dev);
	cell_t status;

	if (irq == MAX_XICP_IRQS)
		return;

	if (FUNC4()) {
		FUNC3(sc->ibm_int_off, 1, 1, irq, &status);
#ifdef POWERNV
	} else {
		struct xicp_intvec *ivec = priv;

		KASSERT(ivec != NULL, ("Masking unconfigured interrupt"));
		opal_call(OPAL_SET_XIVE, irq, ivec->cpu << 2, 0xff);
#endif
	}
}