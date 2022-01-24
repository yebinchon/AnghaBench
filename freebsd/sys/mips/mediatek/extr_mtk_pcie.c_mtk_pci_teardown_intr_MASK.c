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
struct resource {int dummy; } ;
struct mtk_pci_softc {int sc_irq_start; int sc_irq_end; int /*<<< orphan*/ ** sc_eventstab; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 struct mtk_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct resource*) ; 

__attribute__((used)) static int
FUNC5(device_t dev, device_t child, struct resource *ires,
	void *cookie)
{
	struct mtk_pci_softc *sc = FUNC0(dev);
	int irq, result, irqidx;

	irq = FUNC4(ires);
	if (irq < sc->sc_irq_start || irq > sc->sc_irq_end)
		return (EINVAL);

	irqidx = irq - sc->sc_irq_start;
	if (sc->sc_eventstab[irqidx] == NULL)
		FUNC3("Trying to teardown unoccupied IRQ");

	FUNC2((void*)irq);

	result = FUNC1(cookie);
	if (!result)
		sc->sc_eventstab[irqidx] = NULL;
	

	return (result);
}