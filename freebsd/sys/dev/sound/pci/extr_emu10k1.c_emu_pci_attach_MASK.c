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
struct sc_info {scalar_t__ type; int rev; int audigy; int audigy2; int nchans; scalar_t__ lock; scalar_t__ parent_dmat; int /*<<< orphan*/ * irq; scalar_t__ ih; int /*<<< orphan*/ * reg; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  addrmask; int /*<<< orphan*/  dev; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int AC97_CAP_MICCHANNEL ; 
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 scalar_t__ EMU10K2_PCI_ID ; 
 scalar_t__ EMU10K3_PCI_ID ; 
 int /*<<< orphan*/  EMU_A_PTR_ADDR_MASK ; 
 int /*<<< orphan*/  EMU_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  EMU_PTR_ADDR_MASK ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int FUNC4 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  emu_ac97 ; 
 int FUNC14 (struct sc_info*) ; 
 int /*<<< orphan*/  emu_intr ; 
 int /*<<< orphan*/  FUNC15 (struct sc_info*) ; 
 int /*<<< orphan*/  emupchan_class ; 
 int /*<<< orphan*/  emurchan_class ; 
 int /*<<< orphan*/  FUNC16 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC17 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_emu10k1 ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC30 (scalar_t__) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC32 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC33(device_t dev)
{
	struct ac97_info *codec = NULL;
	struct sc_info *sc;
	int i, gotmic;
	char status[SND_STATUSLEN];

	sc = FUNC17(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->lock = FUNC29(FUNC12(dev), "snd_emu10k1 softc");
	sc->dev = dev;
	sc->type = FUNC20(dev);
	sc->rev = FUNC21(dev);
	sc->audigy = sc->type == EMU10K2_PCI_ID || sc->type == EMU10K3_PCI_ID;
	sc->audigy2 = (sc->audigy && sc->rev == 0x04);
	sc->nchans = sc->audigy ? 8 : 4;
	sc->addrmask = sc->audigy ? EMU_A_PTR_ADDR_MASK : EMU_PTR_ADDR_MASK;

	FUNC19(dev);

	i = FUNC1(0);
	sc->reg = FUNC6(dev, SYS_RES_IOPORT, &i, RF_ACTIVE);
	if (sc->reg == NULL) {
		FUNC13(dev, "unable to map register space\n");
		goto bad;
	}
	sc->st = FUNC27(sc->reg);
	sc->sh = FUNC26(sc->reg);

	sc->bufsz = FUNC23(dev, 4096, EMU_DEFAULT_BUFSZ, 65536);

	if (FUNC7(/*parent*/FUNC9(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/(1U << 31) - 1, /* can only access 0-2gb */
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/sc->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant, &sc->parent_dmat) != 0) {
		FUNC13(dev, "unable to create dma tag\n");
		goto bad;
	}

	if (FUNC14(sc) == -1) {
		FUNC13(dev, "unable to initialize the card\n");
		goto bad;
	}

	codec = FUNC0(dev, sc, emu_ac97);
	if (codec == NULL) goto bad;
	gotmic = (FUNC4(codec) & AC97_CAP_MICCHANNEL) ? 1 : 0;
	if (FUNC18(dev, FUNC5(), codec) == -1) goto bad;

	FUNC15(sc);

	i = 0;
	sc->irq = FUNC6(dev, SYS_RES_IRQ, &i,
	    RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq ||
	    FUNC31(dev, sc->irq, INTR_MPSAFE, emu_intr, sc, &sc->ih)) {
		FUNC13(dev, "unable to map interrupt\n");
		goto bad;
	}

	FUNC32(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
	    FUNC28(sc->reg), FUNC28(sc->irq),
	    FUNC2(snd_emu10k1));

	if (FUNC24(dev, sc, sc->nchans, gotmic ? 3 : 2)) goto bad;
	for (i = 0; i < sc->nchans; i++)
		FUNC22(dev, PCMDIR_PLAY, &emupchan_class, sc);
	for (i = 0; i < (gotmic ? 3 : 2); i++)
		FUNC22(dev, PCMDIR_REC, &emurchan_class, sc);

	FUNC25(dev, status);

	return 0;

bad:
	if (codec) FUNC3(codec);
	if (sc->reg) FUNC10(dev, SYS_RES_IOPORT, FUNC1(0), sc->reg);
	if (sc->ih) FUNC11(dev, sc->irq, sc->ih);
	if (sc->irq) FUNC10(dev, SYS_RES_IRQ, 0, sc->irq);
	if (sc->parent_dmat) FUNC8(sc->parent_dmat);
	if (sc->lock) FUNC30(sc->lock);
	FUNC16(sc, M_DEVBUF);
	return ENXIO;
}