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
struct gt_pci_softc {int /*<<< orphan*/ * sc_intr_cookies; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct gt_pci_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (struct resource*) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, struct resource *res,
    void *cookie)
{
	struct gt_pci_softc *sc = FUNC0(dev);
	int irq;

	irq = FUNC3(res);
	FUNC1((void *)&sc->sc_intr_cookies[irq]);

	return (FUNC2(cookie));
}