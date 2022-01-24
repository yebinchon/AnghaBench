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
struct cuda_softc {int /*<<< orphan*/  sc_mutex; int /*<<< orphan*/  sc_memr; int /*<<< orphan*/  sc_memrid; int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_irqrid; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cuda_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(device_t dev) {
	struct cuda_softc *sc;

	sc = FUNC3(dev);

	FUNC2(dev, sc->sc_irq, sc->sc_ih);
	FUNC1(dev, SYS_RES_IRQ, sc->sc_irqrid, sc->sc_irq);
	FUNC1(dev, SYS_RES_MEMORY, sc->sc_memrid, sc->sc_memr);
	FUNC4(&sc->sc_mutex);

	return (FUNC0(dev));
}