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
struct cpcht_softc {int /*<<< orphan*/  htirq_mtx; TYPE_1__* htirq_map; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ irq_type; } ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ IRQ_MSI ; 
 scalar_t__ IRQ_NONE ; 
 int FUNC0 (scalar_t__,int) ; 
 scalar_t__ cpcht_msipic ; 
 struct cpcht_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int *irq)
{
	struct cpcht_softc *sc;
	int i;

	sc = FUNC1(dev);

	/* Bail if no MSI PIC yet */
	if (cpcht_msipic == 0)
		return (ENXIO);

	FUNC2(&sc->htirq_mtx);
	for (i = 8; i < 124; i++) {
		if (sc->htirq_map[i].irq_type == IRQ_NONE) {
			sc->htirq_map[i].irq_type = IRQ_MSI;
			*irq = FUNC0(cpcht_msipic, i);

			FUNC3(&sc->htirq_mtx);
			return (0);
		}
	}
	FUNC3(&sc->htirq_mtx);

	return (ENXIO);
}