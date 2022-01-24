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
struct atpic_softc {int* sc_rid; int sc_irid; int /*<<< orphan*/ ** sc_res; int /*<<< orphan*/ * sc_ires; int /*<<< orphan*/  sc_icookie; int /*<<< orphan*/  sc_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 size_t ATPIC_MASTER ; 
 size_t ATPIC_SLAVE ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct atpic_softc*,size_t) ; 
 int /*<<< orphan*/  atpic_intr ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct atpic_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct atpic_softc *sc;
	int error;

	sc = FUNC4(dev);
	sc->sc_dev = dev;

	error = ENXIO;

	sc->sc_rid[ATPIC_MASTER] = 0;
	sc->sc_res[ATPIC_MASTER] = FUNC1(dev, SYS_RES_IOPORT,
	    &sc->sc_rid[ATPIC_MASTER], RF_ACTIVE);
	if (sc->sc_res[ATPIC_MASTER] == NULL)
		goto fail;

	sc->sc_rid[ATPIC_SLAVE] = 1;
	sc->sc_res[ATPIC_SLAVE] = FUNC1(dev, SYS_RES_IOPORT,
	    &sc->sc_rid[ATPIC_SLAVE], RF_ACTIVE);
	if (sc->sc_res[ATPIC_SLAVE] == NULL)
		goto fail;

	sc->sc_irid = 0;
	sc->sc_ires = FUNC1(dev, SYS_RES_IRQ, &sc->sc_irid,
	    RF_ACTIVE);
	if (sc->sc_ires == NULL)
		goto fail;

	error = FUNC3(dev, sc->sc_ires, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, atpic_intr, dev, &sc->sc_icookie);
	if (error)
		goto fail;

	FUNC0(sc, ATPIC_SLAVE);
	FUNC0(sc, ATPIC_MASTER);

	FUNC5(dev, 0, 16, 0, TRUE);
	return (0);

 fail:
	if (sc->sc_ires != NULL)
		FUNC2(dev, SYS_RES_IRQ, sc->sc_irid,
		    sc->sc_ires);
	if (sc->sc_res[ATPIC_SLAVE] != NULL)
		FUNC2(dev, SYS_RES_IOPORT,
		    sc->sc_rid[ATPIC_SLAVE], sc->sc_res[ATPIC_SLAVE]);
	if (sc->sc_res[ATPIC_MASTER] != NULL)
		FUNC2(dev, SYS_RES_IOPORT,
		    sc->sc_rid[ATPIC_MASTER], sc->sc_res[ATPIC_MASTER]);
	return (error);
}