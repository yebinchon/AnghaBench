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
struct intsmb_softc {int /*<<< orphan*/  lock; scalar_t__ io_res; int /*<<< orphan*/  io_rid; scalar_t__ irq_res; scalar_t__ irq_hand; scalar_t__ smbus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct intsmb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct intsmb_softc *sc = FUNC3(dev);

	if (sc->smbus)
		FUNC2(dev, sc->smbus);
	if (sc->irq_hand)
		FUNC1(dev, sc->irq_res, sc->irq_hand);
	if (sc->irq_res)
		FUNC0(dev, SYS_RES_IRQ, 0, sc->irq_res);
	if (sc->io_res)
		FUNC0(dev, SYS_RES_IOPORT, sc->io_rid,
		    sc->io_res);
	FUNC4(&sc->lock);
}