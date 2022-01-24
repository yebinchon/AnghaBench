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
struct sc_info {int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  ih; int /*<<< orphan*/ * irq; int /*<<< orphan*/  irqid; int /*<<< orphan*/ * reg; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  regid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ALS_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  als_intr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sc_info*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(device_t dev, struct sc_info *sc)
{
	sc->regid = FUNC0(0);
	sc->reg = FUNC2(dev, SYS_RES_IOPORT, &sc->regid,
					 RF_ACTIVE);
	if (sc->reg == NULL) {
		FUNC5(dev, "unable to allocate register space\n");
		goto bad;
	}
	sc->st = FUNC8(sc->reg);
	sc->sh = FUNC7(sc->reg);

	sc->irq = FUNC2(dev, SYS_RES_IRQ, &sc->irqid,
					 RF_ACTIVE | RF_SHAREABLE);
	if (sc->irq == NULL) {
		FUNC5(dev, "unable to allocate interrupt\n");
		goto bad;
	}

	if (FUNC9(dev, sc->irq, INTR_MPSAFE, als_intr,
			   sc, &sc->ih)) {
		FUNC5(dev, "unable to setup interrupt\n");
		goto bad;
	}

	sc->bufsz = FUNC6(dev, 4096, ALS_DEFAULT_BUFSZ, 65536);

	if (FUNC3(/*parent*/FUNC4(dev),
			       /*alignment*/2, /*boundary*/0,
			       /*lowaddr*/BUS_SPACE_MAXADDR_24BIT,
			       /*highaddr*/BUS_SPACE_MAXADDR,
			       /*filter*/NULL, /*filterarg*/NULL,
			       /*maxsize*/sc->bufsz,
			       /*nsegments*/1, /*maxsegz*/0x3ffff,
			       /*flags*/0, /*lockfunc*/NULL,
			       /*lockarg*/NULL, &sc->parent_dmat) != 0) {
		FUNC5(dev, "unable to create dma tag\n");
		goto bad;
	}
	return 0;
 bad:
	FUNC1(dev, sc);
	return ENXIO;
}