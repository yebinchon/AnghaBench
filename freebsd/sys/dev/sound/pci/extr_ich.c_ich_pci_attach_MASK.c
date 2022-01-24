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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* ich_func ) (struct sc_info*) ;struct sc_info* ich_arg; } ;
struct sc_info {scalar_t__ vendor; scalar_t__ devid; int swap_reg; int sample_size; int flags; int bufsz; int blkcnt; int hasmic; int hasvra; int hasvrm; int dtbl_size; scalar_t__ ich_lock; scalar_t__ dmat; scalar_t__ chan_dmat; scalar_t__ dtmap; scalar_t__ dtbl; void* nabmbar; scalar_t__ nabmbarid; int /*<<< orphan*/  regtype; void* nambar; scalar_t__ nambarid; void* irq; scalar_t__ irqid; scalar_t__ ih; int /*<<< orphan*/ * codec; TYPE_1__ intrhook; void* nabmbarh; void* nabmbart; void* nambarh; void* nambart; int /*<<< orphan*/  dev; } ;
struct ich_desc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AC97_CAP_MICCHANNEL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ AC97_EXTCAP_VRA ; 
 scalar_t__ AC97_EXTCAP_VRM ; 
 int AC97_F_EAPD_INV ; 
 int BUS_DMA_NOCACHE ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int ICH_CALIBRATE_DONE ; 
 void* ICH_DEFAULT_BLKCNT ; 
 int /*<<< orphan*/  ICH_DEFAULT_BUFSZ ; 
 int ICH_DMA_NOCACHE ; 
 int ICH_DTBL_LENGTH ; 
 int ICH_FIXED_RATE ; 
 int ICH_HIGH_LATENCY ; 
 int /*<<< orphan*/  ICH_LEGACY_ENABLE ; 
 void* ICH_MAX_BLKCNT ; 
 int /*<<< orphan*/  ICH_MAX_BUFSZ ; 
 void* ICH_MIN_BLKCNT ; 
 int ICH_MIN_BLKSZ ; 
 int /*<<< orphan*/  ICH_MIN_BUFSZ ; 
 scalar_t__ INTEL_6300ESB ; 
 scalar_t__ INTEL_82440MX ; 
 scalar_t__ INTEL_82801DB ; 
 scalar_t__ INTEL_82801EB ; 
 scalar_t__ INTEL_82801FB ; 
 scalar_t__ INTEL_82801GB ; 
 scalar_t__ INTEL_VENDORID ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCIR_ICH_LEGACY ; 
 scalar_t__ PCIR_MBBAR ; 
 scalar_t__ PCIR_MMBAR ; 
 scalar_t__ PCIR_NABMBAR ; 
 scalar_t__ PCIR_NAMBAR ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 scalar_t__ SIS_7012 ; 
 scalar_t__ SIS_VENDORID ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 void* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,void**,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ cold ; 
 scalar_t__ FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ich_ac97 ; 
 int /*<<< orphan*/  FUNC24 (struct sc_info*) ; 
 scalar_t__ FUNC25 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC26 (struct sc_info*) ; 
 int /*<<< orphan*/  ich_intr ; 
 int /*<<< orphan*/  ich_setmap ; 
 int /*<<< orphan*/  FUNC27 (struct sc_info*) ; 
 int /*<<< orphan*/  ichchan_class ; 
 struct sc_info* FUNC28 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC38 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 scalar_t__ FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 void* FUNC40 (void*) ; 
 void* FUNC41 (void*) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC43 (scalar_t__) ; 
 scalar_t__ FUNC44 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC45(device_t dev)
{
	uint32_t		subdev;
	uint16_t		extcaps;
	uint16_t		devid, vendor;
	struct sc_info 		*sc;
	int			i;

	sc = FUNC28(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->ich_lock = FUNC42(FUNC20(dev), "snd_ich softc");
	sc->dev = dev;

	vendor = sc->vendor = FUNC34(dev);
	devid = sc->devid = FUNC31(dev);
	subdev = (FUNC32(dev) << 16) | FUNC33(dev);
	/*
	 * The SiS 7012 register set isn't quite like the standard ich.
	 * There really should be a general "quirks" mechanism.
	 */
	if (vendor == SIS_VENDORID && devid == SIS_7012) {
		sc->swap_reg = 1;
		sc->sample_size = 1;
	} else {
		sc->swap_reg = 0;
		sc->sample_size = 2;
	}

	/*
	 * Intel 440MX Errata #36
	 * - AC97 Soft Audio and Soft Modem Master Abort Errata
	 *
	 * http://www.intel.com/design/chipsets/specupdt/245051.htm
	 */
	if (vendor == INTEL_VENDORID && devid == INTEL_82440MX)
		sc->flags |= ICH_DMA_NOCACHE;

	/*
	 * Enable bus master. On ich4/5 this may prevent the detection of
	 * the primary codec becoming ready in ich_init().
	 */
	FUNC30(dev);

	/*
	 * By default, ich4 has NAMBAR and NABMBAR i/o spaces as
	 * read-only.  Need to enable "legacy support", by poking into
	 * pci config space.  The driver should use MMBAR and MBBAR,
	 * but doing so will mess things up here.  ich4 has enough new
	 * features it warrants it's own driver. 
	 */
	if (vendor == INTEL_VENDORID && (devid == INTEL_82801DB ||
	    devid == INTEL_82801EB || devid == INTEL_6300ESB ||
	    devid == INTEL_82801FB || devid == INTEL_82801GB)) {
		sc->nambarid = PCIR_MMBAR;
		sc->nabmbarid = PCIR_MBBAR;
		sc->regtype = SYS_RES_MEMORY;
		FUNC35(dev, PCIR_ICH_LEGACY, ICH_LEGACY_ENABLE, 1);
	} else {
		sc->nambarid = PCIR_NAMBAR;
		sc->nabmbarid = PCIR_NABMBAR;
		sc->regtype = SYS_RES_IOPORT;
	}

	sc->nambar = FUNC8(dev, sc->regtype, 
		&sc->nambarid, RF_ACTIVE);
	sc->nabmbar = FUNC8(dev, sc->regtype, 
		&sc->nabmbarid, RF_ACTIVE);

	if (!sc->nambar || !sc->nabmbar) {
		FUNC22(dev, "unable to map IO port space\n");
		goto bad;
	}

	sc->nambart = FUNC41(sc->nambar);
	sc->nambarh = FUNC40(sc->nambar);
	sc->nabmbart = FUNC41(sc->nabmbar);
	sc->nabmbarh = FUNC40(sc->nabmbar);

	sc->bufsz = FUNC37(dev,
	    ICH_MIN_BUFSZ, ICH_DEFAULT_BUFSZ, ICH_MAX_BUFSZ);

	if (FUNC39(FUNC19(dev),
	    FUNC21(dev), "blocksize", &i) == 0 && i > 0) {
		sc->blkcnt = sc->bufsz / i;
		i = 0;
		while (sc->blkcnt >> i)
			i++;
		sc->blkcnt = 1 << (i - 1);
		if (sc->blkcnt < ICH_MIN_BLKCNT)
			sc->blkcnt = ICH_MIN_BLKCNT;
		else if (sc->blkcnt > ICH_MAX_BLKCNT)
			sc->blkcnt = ICH_MAX_BLKCNT;
	} else
		sc->blkcnt = ICH_DEFAULT_BLKCNT;

	if (FUNC39(FUNC19(dev),
	    FUNC21(dev), "highlatency", &i) == 0 && i != 0) {
		sc->flags |= ICH_HIGH_LATENCY;
		sc->blkcnt = ICH_MIN_BLKCNT;
	}

	if (FUNC39(FUNC19(dev),
	    FUNC21(dev), "fixedrate", &i) == 0 && i != 0)
		sc->flags |= ICH_FIXED_RATE;

	if (FUNC39(FUNC19(dev),
	    FUNC21(dev), "micchannel_enabled", &i) == 0 && i != 0)
		sc->hasmic = 1;

	sc->irqid = 0;
	sc->irq = FUNC8(dev, SYS_RES_IRQ, &sc->irqid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq || FUNC44(dev, sc->irq, INTR_MPSAFE, ich_intr,
	    sc, &sc->ih)) {
		FUNC22(dev, "unable to map interrupt\n");
		goto bad;
	}

	if (FUNC25(sc)) {
		FUNC22(dev, "unable to initialize the card\n");
		goto bad;
	}

	sc->codec = FUNC0(dev, sc, ich_ac97);
	if (sc->codec == NULL)
		goto bad;

	/*
	 * Turn on inverted external amplifier sense flags for few
	 * 'special' boards.
	 */
	switch (subdev) {
	case 0x202f161f:	/* Gateway 7326GZ */
	case 0x203a161f:	/* Gateway 4028GZ */
	case 0x203e161f:	/* Gateway 3520GZ/M210 */
	case 0x204c161f:	/* Kvazar-Micro Senator 3592XT */
	case 0x8144104d:	/* Sony VAIO PCG-TR* */
	case 0x8197104d:	/* Sony S1XP */
	case 0x81c0104d:	/* Sony VAIO type T */
	case 0x81c5104d:	/* Sony VAIO VGN B1VP/B1XP */
	case 0x3089103c:	/* Compaq Presario B3800 */
	case 0x309a103c:	/* HP Compaq nx4300 */
	case 0x82131033:	/* NEC VersaPro VJ10F/BH */
	case 0x82be1033:	/* NEC VersaPro VJ12F/CH */
		FUNC7(sc->codec, FUNC4(sc->codec) | AC97_F_EAPD_INV);
		break;
	default:
		break;
	}

	FUNC29(dev, FUNC5(), sc->codec);

	/* check and set VRA function */
	extcaps = FUNC3(sc->codec);
	sc->hasvra = extcaps & AC97_EXTCAP_VRA;
	sc->hasvrm = extcaps & AC97_EXTCAP_VRM;
	sc->hasmic = (sc->hasmic != 0 &&
	    (FUNC2(sc->codec) & AC97_CAP_MICCHANNEL)) ? 1 : 0;
	FUNC6(sc->codec, sc->hasvra | sc->hasvrm);

	sc->dtbl_size = sizeof(struct ich_desc) * ICH_DTBL_LENGTH *
	    ((sc->hasmic) ? 3 : 2);

	/* BDL tag */
	if (FUNC9(FUNC15(dev), 8, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    sc->dtbl_size, 1, 0x3ffff, 0, NULL, NULL, &sc->dmat) != 0) {
		FUNC22(dev, "unable to create dma tag\n");
		goto bad;
	}

	/* PCM channel tag */
	if (FUNC9(FUNC15(dev), ICH_MIN_BLKSZ, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    sc->bufsz, 1, 0x3ffff, 0, NULL, NULL, &sc->chan_dmat) != 0) {
		FUNC22(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC13(sc->dmat, (void **)&sc->dtbl, BUS_DMA_NOWAIT |
	    ((sc->flags & ICH_DMA_NOCACHE) ? BUS_DMA_NOCACHE : 0),
	    &sc->dtmap))
		goto bad;

	if (FUNC11(sc->dmat, sc->dtmap, sc->dtbl, sc->dtbl_size,
	    ich_setmap, sc, 0))
		goto bad;

	if (FUNC38(dev, sc, 1, (sc->hasmic) ? 2 : 1))
		goto bad;

	FUNC36(dev, PCMDIR_PLAY, &ichchan_class, sc);		/* play */
	FUNC36(dev, PCMDIR_REC, &ichchan_class, sc);		/* record */
	if (sc->hasmic)
		FUNC36(dev, PCMDIR_REC, &ichchan_class, sc);	/* record mic */

	if (sc->flags & ICH_FIXED_RATE) {
		sc->flags |= ICH_CALIBRATE_DONE;
		FUNC27(sc);
	} else {
		FUNC26(sc);

		sc->intrhook.ich_func = ich_calibrate;
		sc->intrhook.ich_arg = sc;
		if (cold == 0 ||
		    FUNC18(&sc->intrhook) != 0) {
			sc->intrhook.ich_func = NULL;
			FUNC24(sc);
		}
	}

	return (0);

bad:
	if (sc->codec)
		FUNC1(sc->codec);
	if (sc->ih)
		FUNC17(dev, sc->irq, sc->ih);
	if (sc->irq)
		FUNC16(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if (sc->nambar)
		FUNC16(dev, sc->regtype,
		    sc->nambarid, sc->nambar);
	if (sc->nabmbar)
		FUNC16(dev, sc->regtype,
		    sc->nabmbarid, sc->nabmbar);
	if (sc->dtmap)
		FUNC12(sc->dmat, sc->dtmap);
	if (sc->dtbl)
		FUNC14(sc->dmat, sc->dtbl, sc->dtmap);
	if (sc->chan_dmat)
		FUNC10(sc->chan_dmat);
	if (sc->dmat)
		FUNC10(sc->dmat);
	if (sc->ich_lock)
		FUNC43(sc->ich_lock);
	FUNC23(sc, M_DEVBUF);
	return (ENXIO);
}