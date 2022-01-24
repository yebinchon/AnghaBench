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
struct sc_pcminfo {scalar_t__ chnum; void* dev; struct aic_softc* sc; } ;
struct aic_softc {void* dev; int internal_codec; int /*<<< orphan*/  ih; int /*<<< orphan*/ * xchan; int /*<<< orphan*/ * res; scalar_t__ aic_fifo_paddr; int /*<<< orphan*/  bsh; int /*<<< orphan*/  bst; int /*<<< orphan*/ * lock; int /*<<< orphan*/ * xdma_tx; scalar_t__ pos; } ;
typedef  void* device_t ;

/* Variables and functions */
 scalar_t__ AICDR ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int SD_F_MPSAFE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,struct sc_pcminfo*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct aic_softc*) ; 
 int FUNC3 (struct aic_softc*) ; 
 int FUNC4 (struct aic_softc*) ; 
 int /*<<< orphan*/  aic_intr ; 
 int /*<<< orphan*/  aic_spec ; 
 int /*<<< orphan*/  aicchan_class ; 
 int /*<<< orphan*/  aicmixer_class ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (void*,char*) ; 
 void* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 char* FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_pcminfo*) ; 
 int FUNC14 (void*) ; 
 int FUNC15 (void*,struct sc_pcminfo*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*,int) ; 
 int /*<<< orphan*/  FUNC17 (void*,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  sysctl_hw_pcm_internal_codec ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC24 (void*,char*) ; 
 int FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sc_pcminfo*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC26(device_t dev)
{
	char status[SND_STATUSLEN];
	struct sc_pcminfo *scp;
	struct aic_softc *sc;
	int err;

	sc = FUNC10(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->pos = 0;
	sc->internal_codec = 1;

	/* Get xDMA controller */
	sc->xdma_tx = FUNC24(sc->dev, "tx");
	if (sc->xdma_tx == NULL) {
		FUNC9(dev, "Can't find DMA controller.\n");
		return (ENXIO);
	}

	/* Alloc xDMA virtual channel. */
	sc->xchan = FUNC23(sc->xdma_tx, 0);
	if (sc->xchan == NULL) {
		FUNC9(dev, "Can't alloc virtual DMA channel.\n");
		return (ENXIO);
	}

	/* Setup sound subsystem */
	sc->lock = FUNC21(FUNC6(dev), "aic softc");
	if (sc->lock == NULL) {
		FUNC9(dev, "Can't create mtx.\n");
		return (ENXIO);
	}

	if (FUNC5(dev, aic_spec, sc->res)) {
		FUNC9(dev,
		    "could not allocate resources for device\n");
		return (ENXIO);
	}

	/* Memory interface */
	sc->bst = FUNC19(sc->res[0]);
	sc->bsh = FUNC18(sc->res[0]);
	sc->aic_fifo_paddr = FUNC20(sc->res[0]) + AICDR;

	/* Setup PCM. */
	scp = FUNC10(sizeof(struct sc_pcminfo), M_DEVBUF, M_WAITOK | M_ZERO);
	scp->sc = sc;
	scp->dev = dev;

	/* Setup audio buffer. */
	err = FUNC4(sc);
	if (err != 0) {
		FUNC9(dev, "Can't setup sound buffer.\n");
		return (ENXIO);
	}

	/* Setup clocks. */
	err = FUNC3(sc);
	if (err != 0) {
		FUNC9(dev, "Can't configure clocks.\n");
		return (ENXIO);
	}

	err = FUNC2(sc);
	if (err != 0) {
		FUNC9(dev, "Can't configure AIC.\n");
		return (ENXIO);
	}

	FUNC16(dev, FUNC14(dev) | SD_F_MPSAFE);

	/* Setup interrupt handler. */
	err = FUNC25(sc->xchan, aic_intr, scp, &sc->ih);
	if (err) {
		FUNC9(sc->dev,
		    "Can't setup xDMA interrupt handler.\n");
		return (ENXIO);
	}

	err = FUNC15(dev, scp, 1, 0);
	if (err) {
		FUNC9(dev, "Can't register pcm.\n");
		return (ENXIO);
	}

	scp->chnum = 0;
	FUNC13(dev, PCMDIR_PLAY, &aicchan_class, scp);
	scp->chnum++;

	FUNC22(status, SND_STATUSLEN, "at %s", FUNC12(dev));
	FUNC17(dev, status);

	FUNC11(dev, &aicmixer_class, scp);

	/* Create device sysctl node. */
	FUNC0(FUNC7(dev),
	    FUNC1(FUNC8(dev)),
	    OID_AUTO, "internal_codec", CTLTYPE_INT | CTLFLAG_RW,
	    scp, 0, sysctl_hw_pcm_internal_codec, "I",
	    "use internal audio codec");

	return (0);
}