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
typedef  scalar_t__ uint32_t ;
typedef  int uint16_t ;
struct via_info {int poll_ticks; int polling; int bufsz; int blkcnt; int dma_eol_wake; int dxs_src; int codec_caps; scalar_t__ lock; scalar_t__ sgd_dmat; int /*<<< orphan*/  sgd_dmamap; scalar_t__ sgd_table; scalar_t__ sgd_addr; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; scalar_t__ codec; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  poll_timer; int /*<<< orphan*/  dev; } ;
struct via_dma_op {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct via_info*,int /*<<< orphan*/ ) ; 
 int AC97_EXTCAP_DRA ; 
 int AC97_EXTCAP_VRA ; 
 int AC97_EXTCAP_VRM ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NDXSCHANS ; 
 int NMSGDCHANS ; 
 int NWRCHANS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 scalar_t__ VIA8233_REV_ID_8233A ; 
 scalar_t__ VIA8233_REV_ID_8251 ; 
 int VIA_BLK_ALIGN ; 
 int VIA_BLK_MIN ; 
 int /*<<< orphan*/  VIA_DEFAULT_BUFSZ ; 
 int VIA_SEGS_DEFAULT ; 
 int VIA_SEGS_MAX ; 
 int VIA_SEGS_MIN ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct via_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC13 (scalar_t__,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  dma_cb ; 
 int /*<<< orphan*/  FUNC23 (struct via_info*,int /*<<< orphan*/ ) ; 
 struct via_info* FUNC24 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct via_info*) ; 
 int FUNC30 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,struct via_info*,int,int) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC34 (void*) ; 
 int /*<<< orphan*/  FUNC35 (void*) ; 
 int /*<<< orphan*/  FUNC36 (void*) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct via_info*,scalar_t__*) ; 
 int /*<<< orphan*/  snd_via8233 ; 
 int /*<<< orphan*/  FUNC40 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  via8233dxs_class ; 
 int /*<<< orphan*/  via8233msgd_class ; 
 int /*<<< orphan*/  via8233wr_class ; 
 int /*<<< orphan*/  via_ac97 ; 
 scalar_t__ FUNC41 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  via_intr ; 

__attribute__((used)) static int
FUNC43(device_t dev)
{
	struct via_info *via = NULL;
	char status[SND_STATUSLEN];
	int i, via_dxs_disabled, via_dxs_src, via_dxs_chnum, via_sgd_chnum;
	int nsegs;
	uint32_t revid;

	via = FUNC24(sizeof *via, M_DEVBUF, M_WAITOK | M_ZERO);
	via->lock = FUNC37(FUNC20(dev),
	    "snd_via8233 softc");
	via->dev = dev;

	FUNC18(&via->poll_timer, 1);
	via->poll_ticks = 1;

	if (FUNC33(FUNC19(dev),
	    FUNC21(dev), "polling", &i) == 0 && i != 0)
		via->polling = 1;
	else
		via->polling = 0;

	FUNC28(dev, PCI_POWERSTATE_D0);
	FUNC26(dev);

	via->regid = FUNC1(0);
	via->reg = FUNC8(dev, SYS_RES_IOPORT, &via->regid,
					  RF_ACTIVE);
	if (!via->reg) {
		FUNC22(dev, "cannot allocate bus resource.");
		goto bad;
	}
	via->st = FUNC35(via->reg);
	via->sh = FUNC34(via->reg);

	via->irqid = 0;
	via->irq = FUNC8(dev, SYS_RES_IRQ, &via->irqid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!via->irq ||
	    FUNC39(dev, via->irq, INTR_MPSAFE,
	    via_intr, via, &via->ih)) {
		FUNC22(dev, "unable to map interrupt\n");
		goto bad;
	}

	via->bufsz = FUNC30(dev, 4096, VIA_DEFAULT_BUFSZ, 65536);
	if (FUNC33(FUNC19(dev),
	    FUNC21(dev), "blocksize", &i) == 0 && i > 0) {
		i &= VIA_BLK_ALIGN;
		if (i < VIA_BLK_MIN)
			i = VIA_BLK_MIN;
		via->blkcnt = via->bufsz / i;
		i = 0;
		while (via->blkcnt >> i)
			i++;
		via->blkcnt = 1 << (i - 1);
		if (via->blkcnt < VIA_SEGS_MIN)
			via->blkcnt = VIA_SEGS_MIN;
		else if (via->blkcnt > VIA_SEGS_MAX)
			via->blkcnt = VIA_SEGS_MAX;

	} else
		via->blkcnt = VIA_SEGS_DEFAULT;

	revid = FUNC27(dev);

	/*
	 * VIA8251 lost its interrupt after DMA EOL, and need
	 * a gentle spank on its face within interrupt handler.
	 */
	if (revid == VIA8233_REV_ID_8251)
		via->dma_eol_wake = 1;
	else
		via->dma_eol_wake = 0;

	/*
	 * Decide whether DXS had to be disabled or not
	 */
	if (revid == VIA8233_REV_ID_8233A) {
		/*
		 * DXS channel is disabled.  Reports from multiple users
		 * that it plays at half-speed.  Do not see this behaviour
		 * on available 8233C or when emulating 8233A register set
		 * on 8233C (either with or without ac97 VRA).
		 */
		via_dxs_disabled = 1;
	} else if (FUNC33(FUNC19(dev),
	    FUNC21(dev), "via_dxs_disabled",
	    &via_dxs_disabled) == 0)
		via_dxs_disabled = (via_dxs_disabled > 0) ? 1 : 0;
	else
		via_dxs_disabled = 0;

	if (via_dxs_disabled) {
		via_dxs_chnum = 0;
		via_sgd_chnum = 1;
	} else {
		if (FUNC33(FUNC19(dev),
		    FUNC21(dev), "via_dxs_channels",
		    &via_dxs_chnum) != 0)
			via_dxs_chnum = NDXSCHANS;
		if (FUNC33(FUNC19(dev),
		    FUNC21(dev), "via_sgd_channels",
		    &via_sgd_chnum) != 0)
			via_sgd_chnum = NMSGDCHANS;
	}
	if (via_dxs_chnum > NDXSCHANS)
		via_dxs_chnum = NDXSCHANS;
	else if (via_dxs_chnum < 0)
		via_dxs_chnum = 0;
	if (via_sgd_chnum > NMSGDCHANS)
		via_sgd_chnum = NMSGDCHANS;
	else if (via_sgd_chnum < 0)
		via_sgd_chnum = 0;
	if (via_dxs_chnum + via_sgd_chnum < 1) {
		/* Minimalist ? */
		via_dxs_chnum = 1;
		via_sgd_chnum = 0;
	}
	if (via_dxs_chnum > 0 && FUNC33(FUNC19(dev),
	    FUNC21(dev), "via_dxs_src", &via_dxs_src) == 0)
		via->dxs_src = (via_dxs_src > 0) ? 1 : 0;
	else
		via->dxs_src = 0;

	nsegs = (via_dxs_chnum + via_sgd_chnum + NWRCHANS) * VIA_SEGS_MAX;

	/* DMA tag for buffers */
	if (FUNC9(/*parent*/FUNC15(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/via->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &via->parent_dmat) != 0) {
		FUNC22(dev, "unable to create dma tag\n");
		goto bad;
	}

	/*
	 *  DMA tag for SGD table.  The 686 uses scatter/gather DMA and
	 *  requires a list in memory of work to do.  We need only 16 bytes
	 *  for this list, and it is wasteful to allocate 16K.
	 */
	if (FUNC9(/*parent*/FUNC15(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/nsegs * sizeof(struct via_dma_op),
		/*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &via->sgd_dmat) != 0) {
		FUNC22(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC13(via->sgd_dmat, (void **)&via->sgd_table,
	    BUS_DMA_NOWAIT, &via->sgd_dmamap) == -1)
		goto bad;
	if (FUNC11(via->sgd_dmat, via->sgd_dmamap, via->sgd_table,
	    nsegs * sizeof(struct via_dma_op), dma_cb, via, 0))
		goto bad;

	if (FUNC41(dev))
		goto bad;

	via->codec = FUNC0(dev, via, via_ac97);
	if (!via->codec)
		goto bad;

	FUNC25(dev, FUNC6(), via->codec);

	via->codec_caps = FUNC4(via->codec);

	/* Try to set VRA without generating an error, VRM not reqrd yet */
	if (via->codec_caps &
	    (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM | AC97_EXTCAP_DRA)) {
		uint16_t ext = FUNC5(via->codec);
		ext |= (via->codec_caps &
		    (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM));
		ext &= ~AC97_EXTCAP_DRA;
		FUNC7(via->codec, ext);
	}

	FUNC40(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
	    FUNC36(via->reg), FUNC36(via->irq),
	    FUNC2(snd_via8233));

	/* Register */
	if (FUNC31(dev, via, via_dxs_chnum + via_sgd_chnum, NWRCHANS))
	      goto bad;
	for (i = 0; i < via_dxs_chnum; i++)
	      FUNC29(dev, PCMDIR_PLAY, &via8233dxs_class, via);
	for (i = 0; i < via_sgd_chnum; i++)
	      FUNC29(dev, PCMDIR_PLAY, &via8233msgd_class, via);
	for (i = 0; i < NWRCHANS; i++)
	      FUNC29(dev, PCMDIR_REC, &via8233wr_class, via);
	if (via_dxs_chnum > 0)
		FUNC42(dev);
	FUNC22(dev, "<VIA DXS %sabled: DXS%s %d / SGD %d / REC %d>\n",
	    (via_dxs_chnum > 0) ? "En" : "Dis", (via->dxs_src) ? "(SRC)" : "",
	    via_dxs_chnum, via_sgd_chnum, NWRCHANS);

	FUNC32(dev, status);

	return (0);
bad:
	if (via->codec)
		FUNC3(via->codec);
	if (via->reg)
		FUNC16(dev, SYS_RES_IOPORT, via->regid, via->reg);
	if (via->ih)
		FUNC17(dev, via->irq, via->ih);
	if (via->irq)
		FUNC16(dev, SYS_RES_IRQ, via->irqid, via->irq);
	if (via->parent_dmat)
		FUNC10(via->parent_dmat);
	if (via->sgd_addr)
		FUNC12(via->sgd_dmat, via->sgd_dmamap);
	if (via->sgd_table)
		FUNC14(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
	if (via->sgd_dmat)
		FUNC10(via->sgd_dmat);
	if (via->lock)
		FUNC38(via->lock);
	if (via)
		FUNC23(via, M_DEVBUF);
	return (ENXIO);
}