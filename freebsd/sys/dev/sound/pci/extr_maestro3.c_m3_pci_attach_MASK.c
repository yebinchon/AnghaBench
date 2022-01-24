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
typedef  int /*<<< orphan*/  u_int16_t ;
struct sc_info {scalar_t__ type; scalar_t__ regtype; scalar_t__ sc_lock; scalar_t__ parent_dmat; void* reg; scalar_t__ regid; void* irq; scalar_t__ irqid; scalar_t__ ih; int /*<<< orphan*/ * savemem; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  delay2; int /*<<< orphan*/  delay1; int /*<<< orphan*/  which; int /*<<< orphan*/  dev; } ;
struct m3_card_type {scalar_t__ pci_id; int /*<<< orphan*/  delay2; int /*<<< orphan*/  delay1; int /*<<< orphan*/  which; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  CALL ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M3_BUFSIZE_DEFAULT ; 
 int /*<<< orphan*/  M3_BUFSIZE_MAX ; 
 int /*<<< orphan*/  M3_BUFSIZE_MIN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sc_info*) ; 
 int /*<<< orphan*/  M3_MAXADDR ; 
 int M3_PCHANS ; 
 int M3_RCHANS ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int REV_B_CODE_MEMORY_LENGTH ; 
 int REV_B_DATA_MEMORY_LENGTH ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 scalar_t__ SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_IRQ ; 
 scalar_t__ SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC6 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct m3_card_type* m3_card_types ; 
 int /*<<< orphan*/  m3_codec ; 
 int /*<<< orphan*/  FUNC19 (struct sc_info*) ; 
 int FUNC20 (struct sc_info*) ; 
 int /*<<< orphan*/  m3_intr ; 
 int /*<<< orphan*/  m3_pch_class ; 
 int /*<<< orphan*/  FUNC21 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  m3_rch_class ; 
 struct sc_info* FUNC22 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC32 (void*) ; 
 int /*<<< orphan*/  FUNC33 (void*) ; 
 int /*<<< orphan*/  FUNC34 (void*) ; 
 int /*<<< orphan*/  snd_maestro3 ; 
 scalar_t__ FUNC35 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC36 (scalar_t__) ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC38 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC39(device_t dev)
{
	struct sc_info *sc;
	struct ac97_info *codec = NULL;
	char status[SND_STATUSLEN];
	struct m3_card_type *card;
	int i, len, dacn, adcn;

	FUNC1(CALL, ("m3_pci_attach\n"));

	sc = FUNC22(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->type = FUNC26(dev);
	sc->sc_lock = FUNC35(FUNC15(dev),
	    "snd_maestro3 softc");
	for (card = m3_card_types ; card->pci_id ; card++) {
		if (sc->type == card->pci_id) {
			sc->which = card->which;
			sc->delay1 = card->delay1;
			sc->delay2 = card->delay2;
			break;
		}
	}

	if (FUNC31(FUNC14(dev), FUNC16(dev),
	    "dac", &i) == 0) {
	    	if (i < 1)
			dacn = 1;
		else if (i > M3_PCHANS)
			dacn = M3_PCHANS;
		else
			dacn = i;
	} else
		dacn = M3_PCHANS;

	adcn = M3_RCHANS;

	FUNC25(dev);

	sc->regid = FUNC4(0);
	sc->regtype = SYS_RES_MEMORY;
	sc->reg = FUNC8(dev, sc->regtype, &sc->regid,
					 RF_ACTIVE);
	if (!sc->reg) {
		sc->regtype = SYS_RES_IOPORT;
		sc->reg = FUNC8(dev, sc->regtype, &sc->regid,
						 RF_ACTIVE);
	}
	if (!sc->reg) {
		FUNC17(dev, "unable to allocate register space\n");
		goto bad;
	}
	sc->st = FUNC33(sc->reg);
	sc->sh = FUNC32(sc->reg);

	sc->irqid = 0;
	sc->irq = FUNC8(dev, SYS_RES_IRQ, &sc->irqid,
					 RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq) {
		FUNC17(dev, "unable to allocate interrupt\n");
		goto bad;
	}

	if (FUNC37(dev, sc->irq, INTR_MPSAFE, m3_intr, sc, &sc->ih)) {
		FUNC17(dev, "unable to setup interrupt\n");
		goto bad;
	}

	sc->bufsz = FUNC28(dev, M3_BUFSIZE_MIN, M3_BUFSIZE_DEFAULT,
	    M3_BUFSIZE_MAX);

	if (FUNC9(
	    FUNC11(dev),	/* parent */
	    2, 0,		/* alignment, boundary */
	    M3_MAXADDR,		/* lowaddr */
	    BUS_SPACE_MAXADDR,	/* highaddr */
	    NULL, NULL,		/* filtfunc, filtfuncarg */
	    sc->bufsz,		/* maxsize */
	    1,			/* nsegments */
	    0x3ffff,		/* maxsegz */
	    0,			/* flags */
	    NULL,		/* lockfunc */
	    NULL,		/* lockfuncarg */
	    &sc->parent_dmat) != 0) {
		FUNC17(dev, "unable to create dma tag\n");
		goto bad;
	}

	FUNC2(sc);
	FUNC21(sc, 0); /* power up */
	/* init chip */
	i = FUNC20(sc);
	FUNC3(sc);
	if (i == -1) {
		FUNC17(dev, "unable to initialize the card\n");
		goto bad;
	}

	/* create/init mixer */
	codec = FUNC0(dev, sc, m3_codec);
	if (codec == NULL) {
		FUNC17(dev, "ac97_create error\n");
		goto bad;
	}
	if (FUNC24(dev, FUNC7(), codec)) {
		FUNC17(dev, "mixer_init error\n");
		goto bad;
	}

	FUNC19(sc);

	if (FUNC29(dev, sc, dacn, adcn)) {
		FUNC17(dev, "pcm_register error\n");
		goto bad;
	}
	for (i=0 ; i<dacn ; i++) {
		if (FUNC27(dev, PCMDIR_PLAY, &m3_pch_class, sc)) {
			FUNC17(dev, "pcm_addchan (play) error\n");
			goto bad;
		}
	}
	for (i=0 ; i<adcn ; i++) {
		if (FUNC27(dev, PCMDIR_REC, &m3_rch_class, sc)) {
			FUNC17(dev, "pcm_addchan (rec) error\n");
			goto bad;
		}
	}
 	FUNC38(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
	    (sc->regtype == SYS_RES_IOPORT)? "io" : "memory",
	    FUNC34(sc->reg), FUNC34(sc->irq),
	    FUNC5(snd_maestro3));
	if (FUNC30(dev, status)) {
		FUNC17(dev, "attach: pcm_setstatus error\n");
		goto bad;
	}

	FUNC23(dev);

	/* Create the buffer for saving the card state during suspend */
	len = sizeof(u_int16_t) * (REV_B_CODE_MEMORY_LENGTH +
	    REV_B_DATA_MEMORY_LENGTH);
	sc->savemem = (u_int16_t*)FUNC22(len, M_DEVBUF, M_WAITOK | M_ZERO);

	return 0;

 bad:
	if (codec)
		FUNC6(codec);
	if (sc->ih)
		FUNC13(dev, sc->irq, sc->ih);
	if (sc->irq)
		FUNC12(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if (sc->reg)
		FUNC12(dev, sc->regtype, sc->regid, sc->reg);
	if (sc->parent_dmat)
		FUNC10(sc->parent_dmat);
	if (sc->sc_lock)
		FUNC36(sc->sc_lock);
	FUNC18(sc, M_DEVBUF);
	return ENXIO;
}