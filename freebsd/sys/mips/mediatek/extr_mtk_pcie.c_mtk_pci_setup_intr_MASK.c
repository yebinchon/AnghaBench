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
struct mtk_pci_softc {int sc_irq_start; int sc_irq_end; struct intr_event** sc_eventstab; } ;
struct intr_event {int dummy; } ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_pci_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intr_event*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int,void**) ; 
 int FUNC3 (struct intr_event**,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (void*),int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  mtk_pci_mask_irq ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int FUNC6 (struct resource*) ; 

__attribute__((used)) static int
FUNC7(device_t bus, device_t child, struct resource *ires,
	int flags, driver_filter_t *filt, driver_intr_t *handler,
	void *arg, void **cookiep)
{
	struct mtk_pci_softc *sc = FUNC1(bus);
	struct intr_event *event;
	int irq, error, irqidx;

	irq = FUNC6(ires);

	if (irq < sc->sc_irq_start || irq > sc->sc_irq_end)
		return (EINVAL);

	irqidx = irq - sc->sc_irq_start;

	event = sc->sc_eventstab[irqidx];
	if (event == NULL) {
		error = FUNC3(&event, (void *)irq, 0, irq,
		    mtk_pci_mask_irq, mtk_pci_unmask_irq, NULL, NULL,
		    "pci intr%d:", irq);

		if (error == 0) {
			sc->sc_eventstab[irqidx] = event;
		}
		else {
			return (error);
		}
	}

	FUNC2(event, FUNC0(child), filt,
		handler, arg, FUNC4(flags), flags, cookiep);

	FUNC5((void*)irq);

	return (0);
}