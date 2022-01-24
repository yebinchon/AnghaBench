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
struct sc_info {scalar_t__ lock; scalar_t__ control_dmat; scalar_t__ buffer_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int /*<<< orphan*/ * regbase; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  rev; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int AC97_F_EAPD_INV ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  DS1_BUFFSIZE ; 
 int DS1_CHANS ; 
 int ENXIO ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int FUNC4 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct ac97_info*,int) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ds1pchan_class ; 
 int /*<<< orphan*/  ds1rchan_class ; 
 int /*<<< orphan*/  ds_ac97 ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (struct sc_info*) ; 
 int /*<<< orphan*/  ds_intr ; 
 int /*<<< orphan*/  FUNC17 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC29 (void*) ; 
 int /*<<< orphan*/  FUNC30 (void*) ; 
 int /*<<< orphan*/  FUNC31 (void*) ; 
 int /*<<< orphan*/  snd_ds1 ; 
 scalar_t__ FUNC32 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC33 (scalar_t__) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC35 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC36(device_t dev)
{
	u_int32_t subdev, i;
	struct sc_info *sc;
	struct ac97_info *codec = NULL;
	char 		status[SND_STATUSLEN];

	sc = FUNC18(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->lock = FUNC32(FUNC13(dev), "snd_ds1 softc");
	sc->dev = dev;
	subdev = (FUNC23(dev) << 16) | FUNC24(dev);
	sc->type = FUNC15(FUNC21(dev), subdev);
	sc->rev = FUNC22(dev);

	FUNC20(dev);

	sc->regid = FUNC1(0);
	sc->reg = FUNC7(dev, SYS_RES_MEMORY, &sc->regid,
					 RF_ACTIVE);
	if (!sc->reg) {
		FUNC14(dev, "unable to map register space\n");
		goto bad;
	}

	sc->st = FUNC30(sc->reg);
	sc->sh = FUNC29(sc->reg);

	sc->bufsz = FUNC26(dev, 4096, DS1_BUFFSIZE, 65536);

	if (FUNC8(/*parent*/FUNC10(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/sc->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/NULL,
		/*lockarg*/NULL, &sc->buffer_dmat) != 0) {
		FUNC14(dev, "unable to create dma tag\n");
		goto bad;
	}

	sc->regbase = NULL;
	if (FUNC16(sc) == -1) {
		FUNC14(dev, "unable to initialize the card\n");
		goto bad;
	}

	codec = FUNC0(dev, sc, ds_ac97);
	if (codec == NULL)
		goto bad;
	/*
	 * Turn on inverted external amplifier sense flags for few
	 * 'special' boards.
	 */
	switch (subdev) {
	case 0x81171033:	/* NEC ValueStar (VT550/0) */
		FUNC6(codec, FUNC4(codec) | AC97_F_EAPD_INV);
		break;
	default:
		break;
	}
	FUNC19(dev, FUNC5(), codec);

	sc->irqid = 0;
	sc->irq = FUNC7(dev, SYS_RES_IRQ, &sc->irqid,
					 RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq || FUNC34(dev, sc->irq, INTR_MPSAFE, ds_intr, sc, &sc->ih)) {
		FUNC14(dev, "unable to map interrupt\n");
		goto bad;
	}

	FUNC35(status, SND_STATUSLEN, "at memory 0x%jx irq %jd %s",
		 FUNC31(sc->reg), FUNC31(sc->irq),FUNC2(snd_ds1));

	if (FUNC27(dev, sc, DS1_CHANS, 2))
		goto bad;
	for (i = 0; i < DS1_CHANS; i++)
		FUNC25(dev, PCMDIR_PLAY, &ds1pchan_class, sc);
	for (i = 0; i < 2; i++)
		FUNC25(dev, PCMDIR_REC, &ds1rchan_class, sc);
	FUNC28(dev, status);

	return 0;

bad:
	if (codec)
		FUNC3(codec);
	if (sc->reg)
		FUNC11(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
	if (sc->ih)
		FUNC12(dev, sc->irq, sc->ih);
	if (sc->irq)
		FUNC11(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if (sc->buffer_dmat)
		FUNC9(sc->buffer_dmat);
	if (sc->control_dmat)
		FUNC9(sc->control_dmat);
	if (sc->lock)
		FUNC33(sc->lock);
	FUNC17(sc, M_DEVBUF);
	return ENXIO;
}