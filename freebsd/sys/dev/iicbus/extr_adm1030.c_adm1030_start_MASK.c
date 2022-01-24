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
struct TYPE_2__ {int max_rpm; int default_rpm; int (* set ) (struct pmac_fan*,int) ;int /*<<< orphan*/ * read; scalar_t__ zone; int /*<<< orphan*/  name; scalar_t__ min_rpm; } ;
struct adm1030_softc {TYPE_1__ fan; int /*<<< orphan*/  enum_hook; int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ adm1030_set ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct adm1030_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5(void *xdev)
{
	struct adm1030_softc *sc;

	device_t	dev = (device_t) xdev;

	sc = FUNC2(dev);

	/* Start the adm1030 device. */
	FUNC0(sc->sc_dev, sc->sc_addr, 0x1, 0x1);
	FUNC0(sc->sc_dev, sc->sc_addr, 0x0, 0x95);
	FUNC0(sc->sc_dev, sc->sc_addr, 0x23, 0x91);

	/* Use the RPM fields as PWM duty cycles. */
	sc->fan.min_rpm = 0;
	sc->fan.max_rpm = 0x0F;
	sc->fan.default_rpm = 2;

	FUNC4(sc->fan.name, "MDD Case fan");
	sc->fan.zone = 0;
	sc->fan.read = NULL;
	sc->fan.set = (int (*)(struct pmac_fan *, int))adm1030_set;
	FUNC1(&sc->enum_hook);

	FUNC3(&sc->fan);
}