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
struct opalpci_softc {scalar_t__ base_msi_irq; int /*<<< orphan*/ * msi_vmem; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENODEV ; 
 struct opalpci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(device_t dev, device_t child, int count, int *irqs)
{
	struct opalpci_softc *sc;

	sc = FUNC0(dev);
	if (sc->msi_vmem == NULL)
		return (ENODEV);

	FUNC1(sc->msi_vmem, irqs[0] - sc->base_msi_irq, count);
	return (0);
}