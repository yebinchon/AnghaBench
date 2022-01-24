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
struct asmc_softc {int /*<<< orphan*/  sc_mtx; scalar_t__ sc_ioport; int /*<<< orphan*/  sc_rid_port; scalar_t__ sc_irq; int /*<<< orphan*/  sc_rid_irq; scalar_t__ sc_cookie; scalar_t__ sc_sms_tq; int /*<<< orphan*/  sc_sms_task; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct asmc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct asmc_softc *sc = FUNC2(dev);

	if (sc->sc_sms_tq) {
		FUNC4(sc->sc_sms_tq, &sc->sc_sms_task);
		FUNC5(sc->sc_sms_tq);
	}
	if (sc->sc_cookie)
		FUNC1(dev, sc->sc_irq, sc->sc_cookie);
	if (sc->sc_irq)
		FUNC0(dev, SYS_RES_IRQ, sc->sc_rid_irq,
		    sc->sc_irq);
	if (sc->sc_ioport)
		FUNC0(dev, SYS_RES_IOPORT, sc->sc_rid_port,
		    sc->sc_ioport);
	FUNC3(&sc->sc_mtx);

	return (0);
}