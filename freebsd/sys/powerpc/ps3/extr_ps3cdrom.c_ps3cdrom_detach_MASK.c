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
struct ps3cdrom_softc {int /*<<< orphan*/  sc_irq; int /*<<< orphan*/  sc_irqid; int /*<<< orphan*/  sc_irqctx; int /*<<< orphan*/  sc_dmatag; TYPE_1__* sc_xfer; int /*<<< orphan*/  sc_sim; int /*<<< orphan*/  sc_path; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  x_dmamap; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_LOST_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ps3cdrom_softc*) ; 
 int PS3CDROM_MAX_XFERS ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct ps3cdrom_softc* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct ps3cdrom_softc *sc = FUNC7(dev);
	int i;

	FUNC8(AC_LOST_DEVICE, sc->sc_path, NULL);
	FUNC10(sc->sc_path);
	FUNC9(FUNC6(sc->sc_sim));
	FUNC5(sc->sc_sim, TRUE);

	for (i = 0; i < PS3CDROM_MAX_XFERS; i++)
		FUNC2(sc->sc_dmatag, sc->sc_xfer[i].x_dmamap);

	FUNC1(sc->sc_dmatag);

	FUNC4(dev, sc->sc_irq, sc->sc_irqctx);
	FUNC3(dev, SYS_RES_IRQ, sc->sc_irqid, sc->sc_irq);

	FUNC0(sc);

	return (0);
}