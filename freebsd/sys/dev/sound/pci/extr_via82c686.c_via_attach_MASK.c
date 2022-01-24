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
typedef  int u_int32_t ;
struct via_info {int bufsz; int codec_caps; scalar_t__ lock; scalar_t__ sgd_dmat; int /*<<< orphan*/  sgd_dmamap; scalar_t__ sgd_table; scalar_t__ sgd_addr; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; scalar_t__ codec; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; } ;
struct via_dma_op {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct via_info*,int /*<<< orphan*/ ) ; 
 int AC97_EXTCAP_VRA ; 
 int AC97_EXTCAP_VRM ; 
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int NSEGS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  VIA_AC97STATUS ; 
 int VIA_AC97STATUS_RDY ; 
 int /*<<< orphan*/  VIA_ACLINKCTRL ; 
 int VIA_ACLINK_DESIRED ; 
 int VIA_ACLINK_EN ; 
 int VIA_ACLINK_NRST ; 
 int VIA_ACLINK_SYNC ; 
 int /*<<< orphan*/  VIA_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  VIA_PLAY_MODE ; 
 int /*<<< orphan*/  VIA_RECORD_MODE ; 
 int VIA_RPMODE_AUTOSTART ; 
 int VIA_RPMODE_INTR_EOL ; 
 int VIA_RPMODE_INTR_FLAG ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,struct via_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  dma_cb ; 
 int /*<<< orphan*/  FUNC20 (struct via_info*,int /*<<< orphan*/ ) ; 
 struct via_info* FUNC21 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct via_info*) ; 
 int FUNC27 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,struct via_info*,int,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (void*) ; 
 int /*<<< orphan*/  FUNC31 (void*) ; 
 int /*<<< orphan*/  FUNC32 (void*) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__) ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct via_info*,scalar_t__*) ; 
 int /*<<< orphan*/  snd_via82c686 ; 
 int /*<<< orphan*/  FUNC36 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  via_ac97 ; 
 int /*<<< orphan*/  via_intr ; 
 int /*<<< orphan*/  FUNC37 (struct via_info*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  viachan_class ; 

__attribute__((used)) static int
FUNC38(device_t dev)
{
	struct via_info *via = NULL;
	char status[SND_STATUSLEN];
	u_int32_t data, cnt;

	via = FUNC21(sizeof(*via), M_DEVBUF, M_WAITOK | M_ZERO);
	via->lock = FUNC33(FUNC18(dev),
	    "snd_via82c686 softc");

	FUNC23(dev);

	/* Wake up and reset AC97 if necessary */
	data = FUNC24(dev, VIA_AC97STATUS, 1);

	if ((data & VIA_AC97STATUS_RDY) == 0) {
		/* Cold reset per ac97r2.3 spec (page 95) */
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);			/* Assert low */
		FUNC1(100);									/* Wait T_rst_low */
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN | VIA_ACLINK_NRST, 1);	/* Assert high */
		FUNC1(5);									/* Wait T_rst2clk */
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);			/* Assert low */
	} else {
		/* Warm reset */
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);			/* Force no sync */
		FUNC1(100);
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN | VIA_ACLINK_SYNC, 1);	/* Sync */
		FUNC1(5);									/* Wait T_sync_high */
		FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_EN, 1);			/* Force no sync */
		FUNC1(5);									/* Wait T_sync2clk */
	}

	/* Power everything up */
	FUNC25(dev, VIA_ACLINKCTRL, VIA_ACLINK_DESIRED, 1);	

	/* Wait for codec to become ready (largest reported delay here 310ms) */
	for (cnt = 0; cnt < 2000; cnt++) {
		data = FUNC24(dev, VIA_AC97STATUS, 1);
		if (data & VIA_AC97STATUS_RDY) 
			break;
		FUNC1(5000);
	}

	via->regid = FUNC2(0);
	via->reg = FUNC8(dev, SYS_RES_IOPORT,
		&via->regid, RF_ACTIVE);
	if (!via->reg) {
		FUNC19(dev, "cannot allocate bus resource.");
		goto bad;
	}
	via->st = FUNC31(via->reg);
	via->sh = FUNC30(via->reg);

	via->bufsz = FUNC27(dev, 4096, VIA_DEFAULT_BUFSZ, 65536);

	via->irqid = 0;
	via->irq = FUNC8(dev, SYS_RES_IRQ, &via->irqid,
		RF_ACTIVE | RF_SHAREABLE);
	if (!via->irq || FUNC35(dev, via->irq, INTR_MPSAFE, via_intr, via, &via->ih)) {
		FUNC19(dev, "unable to map interrupt\n");
		goto bad;
	}

	FUNC37(via, VIA_PLAY_MODE, VIA_RPMODE_AUTOSTART | VIA_RPMODE_INTR_FLAG | VIA_RPMODE_INTR_EOL, 1);
	FUNC37(via, VIA_RECORD_MODE, VIA_RPMODE_AUTOSTART | VIA_RPMODE_INTR_FLAG | VIA_RPMODE_INTR_EOL, 1);

	via->codec = FUNC0(dev, via, via_ac97);
	if (!via->codec)
		goto bad;

	if (FUNC22(dev, FUNC6(), via->codec))
		goto bad;

	via->codec_caps = FUNC5(via->codec);
	FUNC7(via->codec, 
			via->codec_caps & (AC97_EXTCAP_VRA | AC97_EXTCAP_VRM));

	/* DMA tag for buffers */
	if (FUNC9(/*parent*/FUNC15(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/via->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &via->parent_dmat) != 0) {
		FUNC19(dev, "unable to create dma tag\n");
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
		/*maxsize*/NSEGS * sizeof(struct via_dma_op),
		/*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &via->sgd_dmat) != 0) {
		FUNC19(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC13(via->sgd_dmat, (void **)&via->sgd_table,
	    BUS_DMA_NOWAIT, &via->sgd_dmamap) != 0)
		goto bad;
	if (FUNC11(via->sgd_dmat, via->sgd_dmamap, via->sgd_table,
	    NSEGS * sizeof(struct via_dma_op), dma_cb, via, 0) != 0)
		goto bad;

	FUNC36(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
		 FUNC32(via->reg), FUNC32(via->irq),
		 FUNC3(snd_via82c686));

	/* Register */
	if (FUNC28(dev, via, 1, 1)) goto bad;
	FUNC26(dev, PCMDIR_PLAY, &viachan_class, via);
	FUNC26(dev, PCMDIR_REC, &viachan_class, via);
	FUNC29(dev, status);
	return 0;
bad:
	if (via->codec) FUNC4(via->codec);
	if (via->reg) FUNC16(dev, SYS_RES_IOPORT, via->regid, via->reg);
	if (via->ih) FUNC17(dev, via->irq, via->ih);
	if (via->irq) FUNC16(dev, SYS_RES_IRQ, via->irqid, via->irq);
	if (via->parent_dmat) FUNC10(via->parent_dmat);
	if (via->sgd_addr) FUNC12(via->sgd_dmat, via->sgd_dmamap);
	if (via->sgd_table) FUNC14(via->sgd_dmat, via->sgd_table, via->sgd_dmamap);
	if (via->sgd_dmat) FUNC10(via->sgd_dmat);
	if (via->lock) FUNC34(via->lock);
	if (via) FUNC20(via, M_DEVBUF);
	return ENXIO;
}