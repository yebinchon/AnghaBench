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
struct vscsi_xfer {int /*<<< orphan*/  dmamap; struct vscsi_softc* sc; } ;
struct vscsi_softc {int max_transactions; int /*<<< orphan*/  io_lock; int /*<<< orphan*/ * devq; int /*<<< orphan*/ * sim; int /*<<< orphan*/  free_xferq; int /*<<< orphan*/  data_tag; struct vscsi_xfer* xfer; int /*<<< orphan*/  crq_queue; int /*<<< orphan*/  crq_map; int /*<<< orphan*/  crq_tag; scalar_t__ n_crqs; scalar_t__ crq_phys; struct vscsi_xfer loginxp; int /*<<< orphan*/  active_xferq; int /*<<< orphan*/  irq_cookie; int /*<<< orphan*/  irq; scalar_t__ irqid; int /*<<< orphan*/  unit; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int BUS_SPACE_MAXSIZE ; 
 int BUS_SPACE_MAXSIZE_32BIT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int INTR_ENTROPY ; 
 int INTR_MPSAFE ; 
 int INTR_TYPE_CAM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  M_VSCSI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  RF_ACTIVE ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct vscsi_xfer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct vscsi_softc*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct vscsi_softc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * busdma_lock_mutex ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct vscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct vscsi_softc* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 struct vscsi_xfer* FUNC17 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  queue ; 
 int /*<<< orphan*/  vscsi_cam_action ; 
 int /*<<< orphan*/  vscsi_cam_poll ; 
 int /*<<< orphan*/  vscsi_crq_load_cb ; 
 int /*<<< orphan*/  vscsi_intr ; 
 int /*<<< orphan*/  FUNC23 (struct vscsi_softc*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC25(device_t dev)
{
	struct vscsi_softc *sc;
	struct vscsi_xfer *xp;
	int error, i;

	sc = FUNC14(dev);
	if (sc == NULL)
		return (EINVAL);

	sc->dev = dev;
	FUNC19(&sc->io_lock, "vscsi", NULL, MTX_DEF);

	/* Get properties */
	FUNC0(FUNC22(dev), "reg", &sc->unit,
	    sizeof(sc->unit));

	/* Setup interrupt */
	sc->irqid = 0;
	sc->irq = FUNC3(dev, SYS_RES_IRQ, &sc->irqid,
	    RF_ACTIVE);

	if (!sc->irq) {
		FUNC16(dev, "Could not allocate IRQ\n");
		FUNC18(&sc->io_lock);
		return (ENXIO);
	}

	FUNC9(dev, sc->irq, INTR_TYPE_CAM | INTR_MPSAFE |
	    INTR_ENTROPY, NULL, vscsi_intr, sc, &sc->irq_cookie);

	/* Data DMA */
	error = FUNC4(FUNC8(dev), 1, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL, BUS_SPACE_MAXSIZE,
	    256, BUS_SPACE_MAXSIZE_32BIT, 0, busdma_lock_mutex, &sc->io_lock,
	    &sc->data_tag);

	FUNC1(&sc->active_xferq);
	FUNC1(&sc->free_xferq);

	/* First XFER for login data */
	sc->loginxp.sc = sc;
	FUNC5(sc->data_tag, 0, &sc->loginxp.dmamap);
	FUNC2(&sc->free_xferq, &sc->loginxp, queue);
	 
	/* CRQ area */
	error = FUNC4(FUNC8(dev), PAGE_SIZE, 0,
	    BUS_SPACE_MAXADDR, BUS_SPACE_MAXADDR, NULL, NULL, 8*PAGE_SIZE,
	    1, BUS_SPACE_MAXSIZE, 0, NULL, NULL, &sc->crq_tag);
	error = FUNC7(sc->crq_tag, (void **)&sc->crq_queue,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO, &sc->crq_map);
	sc->crq_phys = 0;
	sc->n_crqs = 0;
	error = FUNC6(sc->crq_tag, sc->crq_map, sc->crq_queue,
	    8*PAGE_SIZE, vscsi_crq_load_cb, sc, 0);

	FUNC20(&sc->io_lock);
	FUNC23(sc);
	sc->xfer = FUNC17(sizeof(sc->xfer[0])*sc->max_transactions, M_VSCSI,
	    M_NOWAIT);
	for (i = 0; i < sc->max_transactions; i++) {
		xp = &sc->xfer[i];
		xp->sc = sc;

		error = FUNC5(sc->data_tag, 0, &xp->dmamap);
		if (error) {
			FUNC16(dev, "Could not create DMA map (%d)\n",
			    error);
			break;
		}

		FUNC2(&sc->free_xferq, xp, queue);
	}
	FUNC21(&sc->io_lock);

	/* Allocate CAM bits */
	if ((sc->devq = FUNC12(sc->max_transactions)) == NULL)
		return (ENOMEM);

	sc->sim = FUNC10(vscsi_cam_action, vscsi_cam_poll, "vscsi", sc,
				FUNC15(dev), &sc->io_lock,
				sc->max_transactions, sc->max_transactions,
				sc->devq);
	if (sc->sim == NULL) {
		FUNC13(sc->devq);
		sc->devq = NULL;
		FUNC16(dev, "CAM SIM attach failed\n");
		return (EINVAL);
	}


	FUNC20(&sc->io_lock);
	if (FUNC24(sc->sim, dev, 0) != 0) {
		FUNC16(dev, "XPT bus registration failed\n");
		FUNC11(sc->sim, FALSE);
		sc->sim = NULL;
		FUNC13(sc->devq);
		sc->devq = NULL;
		FUNC21(&sc->io_lock);
		return (EINVAL);
	}
	FUNC21(&sc->io_lock);

	return (0);
}