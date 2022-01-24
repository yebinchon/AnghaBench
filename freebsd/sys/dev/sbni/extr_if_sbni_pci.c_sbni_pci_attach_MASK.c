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
typedef  scalar_t__ u_int32_t ;
struct sbni_softc {struct sbni_softc* slave_sc; int /*<<< orphan*/  irq_handle; int /*<<< orphan*/ * irq_res; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  dev; } ;
struct sbni_flags {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int ENOENT ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sbni_softc*,int /*<<< orphan*/ *) ; 
 struct sbni_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbni_softc*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct sbni_softc*,int,struct sbni_flags) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_softc*) ; 
 int /*<<< orphan*/  sbni_intr ; 
 int /*<<< orphan*/  FUNC8 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC9(device_t dev)
{
	struct sbni_softc *sc;
	struct sbni_flags flags;
	int error;

	sc = FUNC2(dev);
	sc->dev = dev;

	sc->irq_res = FUNC0(dev, SYS_RES_IRQ, &sc->irq_rid,
					     RF_SHAREABLE);

	if (sc->irq_res == NULL) {
		FUNC4(dev, "cannot claim irq!\n");
		error = ENOENT;
		goto attach_failed;
	}

	*(u_int32_t*)&flags = 0;

	error = FUNC6(sc, FUNC3(dev) * 2, flags);
	if (error) {
		FUNC4(dev, "cannot initialize driver\n");
		goto attach_failed;
	}
	if (sc->slave_sc) {
		error = FUNC6(sc->slave_sc, FUNC3(dev) * 2 + 1,
		    flags);
		if (error) {
			FUNC4(dev, "cannot initialize slave\n");
			FUNC7(sc);
			goto attach_failed;
		}
	}

	if (sc->irq_res) {
		error = FUNC1(dev, sc->irq_res, INTR_TYPE_NET |
		    INTR_MPSAFE, NULL, sbni_intr, sc, &sc->irq_handle);
		if (error) {
			FUNC4(dev, "bus_setup_intr\n");
			FUNC7(sc);
			if (sc->slave_sc)
				FUNC7(sc);
			goto attach_failed;
		}
	}
	return (0);

attach_failed:
	FUNC8(sc);
	if (sc->slave_sc)
		FUNC5(sc->slave_sc, M_DEVBUF);
	return (error);
}