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
typedef  int uint8_t ;
typedef  int uint32_t ;
struct fsl_pcib_softc {int sc_rid; int sc_ip_min; int sc_ip_maj; int sc_pcie; int sc_pcie_capreg; int /*<<< orphan*/ * sc_ih; int /*<<< orphan*/ * sc_irq_res; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_cfg_mtx; int /*<<< orphan*/ * sc_res; scalar_t__ sc_busnr; int /*<<< orphan*/  sc_bsh; int /*<<< orphan*/  sc_bst; } ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_MISC ; 
 int IP_MJ_M ; 
 int IP_MJ_S ; 
 int IP_MN_M ; 
 int IP_MN_S ; 
 int LTSSM_STAT_L0 ; 
 int /*<<< orphan*/  MTX_SPIN ; 
 int PCIB_BCR_SECBUS_RESET ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int PCIM_CMD_SERRESPEN ; 
 int /*<<< orphan*/  PCIR_BRIDGECTL_1 ; 
 int PCIR_CAP_PTR ; 
 int PCIR_COMMAND ; 
 int PCIR_LTSSM ; 
 int PCIR_VENDOR ; 
#define  PCIY_EXPRESS 129 
#define  PCIY_PCIX 128 
 int /*<<< orphan*/  REG_PEX_IP_BLK_REV1 ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 scalar_t__ bootverbose ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 struct fsl_pcib_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC7 (struct fsl_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fsl_pcib_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,struct fsl_pcib_softc*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fsl_pcib_err_intr ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct fsl_pcib_softc *sc;
	phandle_t node;
	uint32_t cfgreg, brctl, ipreg;
	int error, rid;
	uint8_t ltssm, capptr;

	sc = FUNC4(dev);
	sc->sc_dev = dev;

	sc->sc_rid = 0;
	sc->sc_res = FUNC1(dev, SYS_RES_MEMORY, &sc->sc_rid,
	    RF_ACTIVE);
	if (sc->sc_res == NULL) {
		FUNC6(dev, "could not map I/O memory\n");
		return (ENXIO);
	}
	sc->sc_bst = FUNC20(sc->sc_res);
	sc->sc_bsh = FUNC19(sc->sc_res);
	sc->sc_busnr = 0;

	ipreg = FUNC2(sc->sc_res, REG_PEX_IP_BLK_REV1);
	sc->sc_ip_min = (ipreg & IP_MN_M) >> IP_MN_S;
	sc->sc_ip_maj = (ipreg & IP_MJ_M) >> IP_MJ_S;
	FUNC14(&sc->sc_cfg_mtx, "pcicfg", NULL, MTX_SPIN);

	cfgreg = FUNC7(sc, 0, 0, 0, PCIR_VENDOR, 2);
	if (cfgreg != 0x1057 && cfgreg != 0x1957)
		goto err;

	capptr = FUNC7(sc, 0, 0, 0, PCIR_CAP_PTR, 1);
	while (capptr != 0) {
		cfgreg = FUNC7(sc, 0, 0, 0, capptr, 2);
		switch (cfgreg & 0xff) {
		case PCIY_PCIX:
			break;
		case PCIY_EXPRESS:
			sc->sc_pcie = 1;
			sc->sc_pcie_capreg = capptr;
			break;
		}
		capptr = (cfgreg >> 8) & 0xff;
	}

	node = FUNC15(dev);

	/*
	 * Initialize generic OF PCI interface (ranges, etc.)
	 */

	error = FUNC17(dev);
	if (error)
		return (error);

	/*
	 * Configure decode windows for PCI(E) access.
	 */
	if (FUNC9(node, sc) != 0)
		goto err;

	cfgreg = FUNC7(sc, 0, 0, 0, PCIR_COMMAND, 2);
	cfgreg |= PCIM_CMD_SERRESPEN | PCIM_CMD_BUSMASTEREN | PCIM_CMD_MEMEN |
	    PCIM_CMD_PORTEN;
	FUNC8(sc, 0, 0, 0, PCIR_COMMAND, cfgreg, 2);

	/* Reset the bus.  Needed for Radeon video cards. */
	brctl = FUNC12(sc->sc_dev, 0, 0, 0,
	    PCIR_BRIDGECTL_1, 1);
	brctl |= PCIB_BCR_SECBUS_RESET;
	FUNC13(sc->sc_dev, 0, 0, 0,
	    PCIR_BRIDGECTL_1, brctl, 1);
	FUNC0(100000);
	brctl &= ~PCIB_BCR_SECBUS_RESET;
	FUNC13(sc->sc_dev, 0, 0, 0,
	    PCIR_BRIDGECTL_1, brctl, 1);
	FUNC0(100000);

	if (sc->sc_pcie) {
		ltssm = FUNC7(sc, 0, 0, 0, PCIR_LTSSM, 1);
		if (ltssm < LTSSM_STAT_L0) {
			if (bootverbose)
				FUNC18("PCI %d: no PCIE link, skipping\n",
				    FUNC5(dev));
			return (0);
		}
	}

	/* Allocate irq */
	rid = 0;
	sc->sc_irq_res = FUNC1(dev, SYS_RES_IRQ, &rid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (sc->sc_irq_res == NULL) {
		error = FUNC10(dev);
		if (error != 0) {
			FUNC6(dev,
			    "Detach of the driver failed with error %d\n",
			    error);
		}
		return (ENXIO);
	}

	/* Setup interrupt handler */
	error = FUNC3(dev, sc->sc_irq_res, INTR_TYPE_MISC | INTR_MPSAFE,
	    NULL, fsl_pcib_err_intr, dev, &sc->sc_ih);
	if (error != 0) {
		FUNC6(dev, "Could not setup irq, %d\n", error);
		sc->sc_ih = NULL;
		error = FUNC10(dev);
		if (error != 0) {
			FUNC6(dev,
			    "Detach of the driver failed with error %d\n",
			    error);
		}
		return (ENXIO);
	}

	FUNC11(dev);

	return (FUNC16(dev));

err:
	return (ENXIO);
}