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
struct glxiic_softc {int /*<<< orphan*/  old_irq; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/ * irq_handler; int /*<<< orphan*/ * gpio_res; int /*<<< orphan*/  gpio_rid; int /*<<< orphan*/ * smb_res; int /*<<< orphan*/  smb_rid; int /*<<< orphan*/  callout; int /*<<< orphan*/ * iicbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct glxiic_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC8 (struct glxiic_softc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(device_t dev)
{
	struct glxiic_softc *sc;
	int error;

	sc = FUNC6(dev);

	error = FUNC1(dev);
	if (error != 0)
		goto out;
	if (sc->iicbus != NULL)
		error = FUNC5(dev, sc->iicbus);

out:
	FUNC4(&sc->callout);

	if (sc->smb_res != NULL) {
		FUNC8(sc);
		FUNC2(dev, SYS_RES_IOPORT, sc->smb_rid,
		    sc->smb_res);
	}
	if (sc->gpio_res != NULL) {
		FUNC7(sc);
		FUNC2(dev, SYS_RES_IOPORT, sc->gpio_rid,
		    sc->gpio_res);
	}
	if (sc->irq_handler != NULL)
		FUNC3(dev, sc->irq_res, sc->irq_handler);
	if (sc->irq_res != NULL)
		FUNC2(dev, SYS_RES_IRQ, sc->irq_rid,
		    sc->irq_res);

	/* Restore the old SMBus interrupt mapping. */
	FUNC9(sc->old_irq);

	FUNC0(sc);

	return (error);
}