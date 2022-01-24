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
struct ncr53c9x_softc {int dummy; } ;
struct esp_softc {int /*<<< orphan*/  sc_irqres; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_dma; int /*<<< orphan*/  sc_irq; struct ncr53c9x_softc sc_ncr53c9x; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ncr53c9x_softc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct esp_softc *esc)
{
	struct ncr53c9x_softc *sc = &esc->sc_ncr53c9x;
	int error;

	FUNC2(esc->sc_dev, esc->sc_irqres, esc->sc_irq);
	error = FUNC4(sc);
	if (error != 0)
		return (error);
	error = FUNC3(esc->sc_dma);
	if (error != 0)
		return (error);
	FUNC0(sc);
	FUNC1(esc->sc_dev, SYS_RES_IRQ,
	    FUNC5(esc->sc_irqres), esc->sc_irqres);

	return (0);
}