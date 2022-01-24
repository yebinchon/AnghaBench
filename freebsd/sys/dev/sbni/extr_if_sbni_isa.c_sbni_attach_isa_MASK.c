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
typedef  int /*<<< orphan*/  u_int32_t ;
struct sbni_softc {int /*<<< orphan*/  irq_handle; int /*<<< orphan*/ * irq_res; TYPE_1__* ifp; int /*<<< orphan*/  irq_rid; int /*<<< orphan*/  dev; } ;
struct sbni_flags {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  if_xname; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_NET ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sbni_softc*,int /*<<< orphan*/ *) ; 
 struct sbni_softc* FUNC2 (struct sbni_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct sbni_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct sbni_softc*) ; 
 int FUNC8 (struct sbni_softc*,int,struct sbni_flags) ; 
 int /*<<< orphan*/  FUNC9 (struct sbni_softc*) ; 
 int /*<<< orphan*/  sbni_intr ; 
 int /*<<< orphan*/  FUNC10 (struct sbni_softc*) ; 

__attribute__((used)) static int
FUNC11(device_t dev)
{
	struct sbni_softc *sc;
	struct sbni_flags flags;
	int error;
   
	sc = FUNC4(dev);
	sc->dev = dev;

	sc->irq_res = FUNC0(
	    dev, SYS_RES_IRQ, &sc->irq_rid, RF_ACTIVE);

#ifndef SBNI_DUAL_COMPOUND

	if (sc->irq_res == NULL) {
		FUNC6(dev, "irq conflict!\n");
		FUNC10(sc);
		return (ENOENT);
	}

#else	/* SBNI_DUAL_COMPOUND */

	if (sc->irq_res) {
		sbni_add(sc);
	} else {
		struct sbni_softc  *master;

		if ((master = connect_to_master(sc)) == NULL) {
			device_printf(dev, "failed to alloc irq\n");
			sbni_release_resources(sc);
			return (ENXIO);
		} else {
			device_printf(dev, "shared irq with %s\n",
			       master->ifp->if_xname);
		}
	} 
#endif	/* SBNI_DUAL_COMPOUND */

	*(u_int32_t*)&flags = FUNC3(dev);

	error = FUNC8(sc, FUNC5(dev) * 2, flags);
	if (error) {
		FUNC6(dev, "cannot initialize driver\n");
		FUNC10(sc);
		return (error);
	}

	if (sc->irq_res) {
		error = FUNC1(
		    dev, sc->irq_res, INTR_TYPE_NET | INTR_MPSAFE,
		    NULL, sbni_intr, sc, &sc->irq_handle);
		if (error) {
			FUNC6(dev, "bus_setup_intr\n");
			FUNC9(sc);
			FUNC10(sc);
			return (error);
		}
	}

	return (0);
}