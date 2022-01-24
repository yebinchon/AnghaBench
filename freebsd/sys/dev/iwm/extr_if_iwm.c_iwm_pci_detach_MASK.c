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
struct iwm_softc {int /*<<< orphan*/ * sc_mem; int /*<<< orphan*/ * sc_irq; int /*<<< orphan*/  sc_ih; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct iwm_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct iwm_softc *sc = FUNC2(dev);

	if (sc->sc_irq != NULL) {
		FUNC1(dev, sc->sc_irq, sc->sc_ih);
		FUNC0(dev, SYS_RES_IRQ,
		    FUNC4(sc->sc_irq), sc->sc_irq);
		FUNC3(dev);
        }
	if (sc->sc_mem != NULL)
		FUNC0(dev, SYS_RES_MEMORY,
		    FUNC4(sc->sc_mem), sc->sc_mem);
}