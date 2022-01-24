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
struct saf1761_otg_softc {int /*<<< orphan*/  sc_bus; scalar_t__ sc_irq_res; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct saf1761_otg_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saf1761_otg_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct saf1761_otg_softc *sc = FUNC1(dev);

	/* during module unload there are lots of children leftover */
	FUNC0(dev);

	if (sc->sc_irq_res) {
		/*
		 * Only call uninit() after init()
		 */
		FUNC2(sc);
	}
	FUNC3(&sc->sc_bus, NULL);

	return (0);
}