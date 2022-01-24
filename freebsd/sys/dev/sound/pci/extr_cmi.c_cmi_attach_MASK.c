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
struct sc_info {scalar_t__ lock; void* reg; scalar_t__ regid; void* irq; scalar_t__ irqid; scalar_t__ ih; scalar_t__ parent_dmat; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CMI_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
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
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 void* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 scalar_t__ FUNC9 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct sc_info*) ; 
 int /*<<< orphan*/  cmi_intr ; 
 int /*<<< orphan*/  FUNC11 (struct sc_info*) ; 
 int /*<<< orphan*/  cmi_mixer_class ; 
 int /*<<< orphan*/  FUNC12 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmichan_class ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int /*<<< orphan*/  snd_cmi ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC30 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC31(device_t dev)
{
	struct sc_info		*sc;
	char			status[SND_STATUSLEN];

	sc = FUNC16(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->lock = FUNC27(FUNC13(dev), "snd_cmi softc");
	FUNC18(dev);

	sc->dev = dev;
	sc->regid = FUNC1(0);
	sc->reg = FUNC3(dev, SYS_RES_IOPORT, &sc->regid,
					 RF_ACTIVE);
	if (!sc->reg) {
		FUNC14(dev, "cmi_attach: Cannot allocate bus resource\n");
		goto bad;
	}
	sc->st = FUNC25(sc->reg);
	sc->sh = FUNC24(sc->reg);

	if (0)
		FUNC11(sc);

	sc->irqid = 0;
	sc->irq   = FUNC3(dev, SYS_RES_IRQ, &sc->irqid,
					   RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq ||
	    FUNC29(dev, sc->irq, INTR_MPSAFE, cmi_intr, sc, &sc->ih)) {
		FUNC14(dev, "cmi_attach: Unable to map interrupt\n");
		goto bad;
	}

	sc->bufsz = FUNC20(dev, 4096, CMI_DEFAULT_BUFSZ, 65536);

	if (FUNC4(/*parent*/FUNC6(dev), /*alignment*/2,
			       /*boundary*/0,
			       /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
			       /*highaddr*/BUS_SPACE_MAXADDR,
			       /*filter*/NULL, /*filterarg*/NULL,
			       /*maxsize*/sc->bufsz, /*nsegments*/1,
			       /*maxsegz*/0x3ffff, /*flags*/0,
			       /*lockfunc*/NULL,
			       /*lockfunc*/NULL,
			       &sc->parent_dmat) != 0) {
		FUNC14(dev, "cmi_attach: Unable to create dma tag\n");
		goto bad;
	}

	FUNC12(sc, 0);
	if (FUNC9(sc))
		goto bad;

	if (FUNC17(dev, &cmi_mixer_class, sc))
		goto bad;

	if (FUNC21(dev, sc, 1, 1))
		goto bad;

	FUNC10(sc);

	FUNC19(dev, PCMDIR_PLAY, &cmichan_class, sc);
	FUNC19(dev, PCMDIR_REC, &cmichan_class, sc);

	FUNC30(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
		 FUNC26(sc->reg), FUNC26(sc->irq),FUNC2(snd_cmi));
	FUNC22(dev, status);

	FUNC0(FUNC23("cmi_attach: succeeded\n"));
	return 0;

 bad:
	if (sc->parent_dmat)
		FUNC5(sc->parent_dmat);
	if (sc->ih)
		FUNC8(dev, sc->irq, sc->ih);
	if (sc->irq)
		FUNC7(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if (sc->reg)
		FUNC7(dev, SYS_RES_IOPORT, sc->regid, sc->reg);
	if (sc->lock)
		FUNC28(sc->lock);
	if (sc)
		FUNC15(sc, M_DEVBUF);

	return ENXIO;
}