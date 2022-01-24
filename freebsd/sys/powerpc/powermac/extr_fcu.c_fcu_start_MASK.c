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
struct fcu_softc {int /*<<< orphan*/  enum_hook; int /*<<< orphan*/  sc_addr; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct fcu_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*) ; 
 int fcu_rpm_shift ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned char*,int) ; 

__attribute__((used)) static void
FUNC6(void *xdev)
{
	unsigned char buf[1] = { 0xff };
	struct fcu_softc *sc;

	device_t dev = (device_t)xdev;

	sc = FUNC1(dev);

	/* Start the fcu device. */
	FUNC5(sc->sc_dev, sc->sc_addr, 0xe, buf, 1);
	FUNC5(sc->sc_dev, sc->sc_addr, 0x2e, buf, 1);
	FUNC4(sc->sc_dev, sc->sc_addr, 0, buf);
	fcu_rpm_shift = (buf[0] == 1) ? 2 : 3;

	FUNC2(dev, "FCU initialized, RPM shift: %d\n",
		      fcu_rpm_shift);

	/* Detect and attach child devices. */

	FUNC3(dev);

	FUNC0(&sc->enum_hook);

}