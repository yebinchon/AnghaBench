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
typedef  int /*<<< orphan*/  uint32_t ;
struct lsi64854_softc {int sc_burst; int /*<<< orphan*/ * sc_res; int /*<<< orphan*/ * sc_dev; int /*<<< orphan*/  sc_parent_dmat; int /*<<< orphan*/  sc_channel; } ;
struct dma_softc {int /*<<< orphan*/  sc_slot; int /*<<< orphan*/  sc_ign; struct lsi64854_softc sc_lsi64854; } ;
struct TYPE_2__ {int /*<<< orphan*/  obd_name; } ;
struct dma_devinfo {TYPE_1__ ddi_obdinfo; } ;
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXSIZE ; 
 int /*<<< orphan*/  BUS_SPACE_UNRESTRICTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  E_TP_AUI ; 
 int /*<<< orphan*/  L64854_CHANNEL_ENET ; 
 int /*<<< orphan*/  L64854_CHANNEL_SCSI ; 
 int /*<<< orphan*/  FUNC1 (struct lsi64854_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct lsi64854_softc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,char*,void**) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int SBUS_BURST_16 ; 
 int SBUS_BURST_32 ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 struct dma_softc* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,struct dma_devinfo*) ; 
 int /*<<< orphan*/  FUNC16 (struct dma_devinfo*) ; 
 struct dma_devinfo* FUNC17 (int /*<<< orphan*/ *,struct dma_softc*,scalar_t__) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (char const*,char*) ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	struct dma_softc *dsc;
	struct lsi64854_softc *lsc;
	struct dma_devinfo *ddi;
	device_t cdev;
	const char *name;
	char *cabletype;
	uint32_t csr;
	phandle_t child, node;
	int error, i;

	dsc = FUNC13(dev);
	lsc = &dsc->sc_lsi64854;

	name = FUNC18(dev);
	node = FUNC19(dev);
	dsc->sc_ign = FUNC22(dev);
	dsc->sc_slot = FUNC23(dev);

	i = 0;
	lsc->sc_res = FUNC7(dev, SYS_RES_MEMORY, &i,
	    RF_ACTIVE);
	if (lsc->sc_res == NULL) {
		FUNC14(dev, "cannot allocate resources\n");
		return (ENXIO);
	}

	if (FUNC24(name, "espdma") == 0 || FUNC24(name, "dma") == 0)
		lsc->sc_channel = L64854_CHANNEL_SCSI;
	else if (FUNC24(name, "ledma") == 0) {
		/*
		 * Check to see which cable type is currently active and
		 * set the appropriate bit in the ledma csr so that it
		 * gets used. If we didn't netboot, the PROM won't have
		 * the "cable-selection" property; default to TP and then
		 * the user can change it via a "media" option to ifconfig.
		 */
		csr = FUNC1(lsc);
		if ((FUNC4(node, "cable-selection",
		    (void **)&cabletype)) == -1) {
			/* assume TP if nothing there */
			csr |= E_TP_AUI;
		} else {
			if (FUNC24(cabletype, "aui") == 0)
				csr &= ~E_TP_AUI;
			else
				csr |= E_TP_AUI;
			FUNC6(cabletype);
		}
		FUNC2(lsc, csr);
		FUNC0(20000);	/* manual says we need a 20ms delay */
		lsc->sc_channel = L64854_CHANNEL_ENET;
	} else {
		FUNC14(dev, "unsupported DMA channel\n");
		error = ENXIO;
		goto fail_lres;
	}

	error = FUNC8(
	    FUNC10(dev),	/* parent */
	    1, 0,			/* alignment, boundary */
	    BUS_SPACE_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,		/* highaddr */
	    NULL, NULL,			/* filter, filterarg */
	    BUS_SPACE_MAXSIZE,		/* maxsize */
	    BUS_SPACE_UNRESTRICTED,	/* nsegments */
	    BUS_SPACE_MAXSIZE,		/* maxsegsize */
	    0,				/* flags */
	    NULL, NULL,			/* no locking */
	    &lsc->sc_parent_dmat);
	if (error != 0) {
		FUNC14(dev, "cannot allocate parent DMA tag\n");
		goto fail_lres;
	}

	i = FUNC21(dev);
	lsc->sc_burst = (i & SBUS_BURST_32) ? 32 :
	    (i & SBUS_BURST_16) ? 16 : 0;
	lsc->sc_dev = dev;

	/* Attach children. */
	i = 0;
	for (child = FUNC3(node); child != 0; child = FUNC5(child)) {
		if ((ddi = FUNC17(dev, dsc, child)) == NULL)
			continue;
		if (i != 0) {
			FUNC14(dev,
			    "<%s>: only one child per DMA channel supported\n",
			    ddi->ddi_obdinfo.obd_name);
			FUNC16(ddi);
			continue;
		}
		if ((cdev = FUNC12(dev, NULL, -1)) == NULL) {
			FUNC14(dev, "<%s>: device_add_child failed\n",
			    ddi->ddi_obdinfo.obd_name);
			FUNC16(ddi);
			continue;
		}
		FUNC15(cdev, ddi);
		i++;
	}
	return (FUNC9(dev));

 fail_lres:
	FUNC11(dev, SYS_RES_MEMORY, FUNC20(lsc->sc_res),
	    lsc->sc_res);
	return (error);
}