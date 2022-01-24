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
typedef  int u_long ;
typedef  int u_int32_t ;
struct sc_info {int rev; int /*<<< orphan*/ * dmac_reg; void* dmac_rid; void* dmac_type; int /*<<< orphan*/ * dmaa_reg; void* dmaa_rid; void* dmaa_type; int /*<<< orphan*/ * enh_reg; void* enh_rid; void* enh_type; int /*<<< orphan*/ * irq; void* irqid; scalar_t__ ih; scalar_t__ parent_dmat; void* dmac_sh; void* dmac_st; void* dmaa_sh; void* dmaa_st; int /*<<< orphan*/  bufsz; void* enh_sh; void* enh_st; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ rman_res_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SV_DEFAULT_BUFSZ ; 
 void* SV_PCI_DMAA ; 
 int /*<<< orphan*/  SV_PCI_DMAA_SIZE ; 
 void* SV_PCI_DMAC ; 
 int /*<<< orphan*/  SV_PCI_DMAC_SIZE ; 
 int SV_PCI_DMA_ENABLE ; 
 int SV_PCI_DMA_EXTENDED ; 
 void* SV_PCI_ENHANCED ; 
 int /*<<< orphan*/  SV_PCI_GAMES ; 
 int /*<<< orphan*/  SV_PCI_MIDI ; 
 void* SYS_RES_IOPORT ; 
 void* SYS_RES_IRQ ; 
 scalar_t__ bootverbose ; 
 void* FUNC2 (int /*<<< orphan*/ ,void*,void**,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,void*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 struct sc_info* FUNC11 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,...) ; 
 void* FUNC23 (int /*<<< orphan*/ *) ; 
 void* FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  snd_vibes ; 
 int /*<<< orphan*/  FUNC27 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (struct sc_info*) ; 
 int /*<<< orphan*/  sv_intr ; 
 int /*<<< orphan*/  FUNC29 (struct sc_info*) ; 
 int /*<<< orphan*/  sv_mixer_class ; 
 int /*<<< orphan*/  FUNC30 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svpchan_class ; 
 int /*<<< orphan*/  svrchan_class ; 

__attribute__((used)) static int
FUNC31(device_t dev) {
	struct sc_info	*sc;
	rman_res_t	count, midi_start, games_start;
	u_int32_t	data;
	char		status[SND_STATUSLEN];
	u_long		sdmaa, sdmac, ml, mu;

	sc = FUNC11(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;

	FUNC13(dev);

        if (FUNC14(dev) != PCI_POWERSTATE_D0) {
                FUNC10(dev, "chip is in D%d power mode "
                              "-- setting to D0\n", FUNC14(dev));
                FUNC16(dev, PCI_POWERSTATE_D0);
        }
	sc->enh_rid  = SV_PCI_ENHANCED;
	sc->enh_type = SYS_RES_IOPORT;
	sc->enh_reg  = FUNC2(dev, sc->enh_type,
					      &sc->enh_rid, RF_ACTIVE);
	if (sc->enh_reg == NULL) {
		FUNC10(dev, "sv_attach: cannot allocate enh\n");
		return ENXIO;
	}
	sc->enh_st = FUNC24(sc->enh_reg);
	sc->enh_sh = FUNC23(sc->enh_reg);

	data = FUNC15(dev, SV_PCI_DMAA, 4);
	FUNC0(FUNC22("sv_attach: initial dmaa 0x%08x\n", data));
	data = FUNC15(dev, SV_PCI_DMAC, 4);
	FUNC0(FUNC22("sv_attach: initial dmac 0x%08x\n", data));

	/* Initialize DMA_A and DMA_C */
	FUNC17(dev, SV_PCI_DMAA, SV_PCI_DMA_EXTENDED, 4);
	FUNC17(dev, SV_PCI_DMAC, 0, 4);

	/* Register IRQ handler */
	sc->irqid = 0;
        sc->irq   = FUNC2(dev, SYS_RES_IRQ, &sc->irqid,
					   RF_ACTIVE | RF_SHAREABLE);
        if (!sc->irq ||
	    FUNC26(dev, sc->irq, 0, sv_intr, sc, &sc->ih)) {
                FUNC10(dev, "sv_attach: Unable to map interrupt\n");
                goto fail;
        }

	sc->bufsz = FUNC19(dev, 4096, SV_DEFAULT_BUFSZ, 65536);
        if (FUNC3(/*parent*/FUNC5(dev), /*alignment*/2,
			       /*boundary*/0,
                               /*lowaddr*/BUS_SPACE_MAXADDR_24BIT,
                               /*highaddr*/BUS_SPACE_MAXADDR,
                               /*filter*/NULL, /*filterarg*/NULL,
                               /*maxsize*/sc->bufsz, /*nsegments*/1,
                               /*maxsegz*/0x3ffff, /*flags*/0,
			       /*lockfunc*/busdma_lock_mutex,
			       /*lockarg*/&Giant, &sc->parent_dmat) != 0) {
                FUNC10(dev, "sv_attach: Unable to create dma tag\n");
                goto fail;
        }

	/* Power up and initialize */
	FUNC29(sc);
	FUNC30(sc, 0);
	FUNC28(sc);

	if (FUNC12(dev, &sv_mixer_class, sc) != 0) {
		FUNC10(dev, "sv_attach: Mixer failed to initialize\n");
		goto fail;
	}

	/* XXX This is a hack, and it's ugly.  Okay, the deal is this
	 * card has two more io regions that available for automatic
	 * configuration by the pci code.  These need to be allocated
	 * to used as control registers for the DMA engines.
	 * Unfortunately FBSD has no bus_space_foo() functions so we
	 * have to grab port space in region of existing resources.  Go
	 * for space between midi and game ports.
	 */
	FUNC6(dev, SYS_RES_IOPORT, SV_PCI_MIDI, &midi_start, &count);
	FUNC6(dev, SYS_RES_IOPORT, SV_PCI_GAMES, &games_start, &count);

	if (games_start < midi_start) {
		ml = games_start;
		mu = midi_start;
	} else {
		ml = midi_start;
		mu = games_start;
	}
	/* Check assumptions about space availability and
           alignment. How driver loaded can determine whether
           games_start > midi_start or vice versa */
	if ((mu - ml >= 0x800)  ||
	    ((mu - ml) % 0x200)) {
		FUNC10(dev, "sv_attach: resource assumptions not met "
			      "(midi 0x%08lx, games 0x%08lx)\n",
			      (u_long)midi_start, (u_long)games_start);
		goto fail;
	}

	sdmaa = ml + 0x40;
	sdmac = sdmaa + 0x40;

	/* Add resources to list of pci resources for this device - from here on
	 * they look like normal pci resources. */
	FUNC8(dev, SYS_RES_IOPORT, SV_PCI_DMAA, sdmaa, SV_PCI_DMAA_SIZE);
	FUNC8(dev, SYS_RES_IOPORT, SV_PCI_DMAC, sdmac, SV_PCI_DMAC_SIZE);

	/* Cache resource short-cuts for dma_a */
	sc->dmaa_rid = SV_PCI_DMAA;
	sc->dmaa_type = SYS_RES_IOPORT;
	sc->dmaa_reg  = FUNC2(dev, sc->dmaa_type,
					       &sc->dmaa_rid, RF_ACTIVE);
	if (sc->dmaa_reg == NULL) {
		FUNC10(dev, "sv_attach: cannot allocate dmaa\n");
		goto fail;
	}
	sc->dmaa_st = FUNC24(sc->dmaa_reg);
	sc->dmaa_sh = FUNC23(sc->dmaa_reg);

	/* Poke port into dma_a configuration, nb bit flags to enable dma */
	data = FUNC15(dev, SV_PCI_DMAA, 4) | SV_PCI_DMA_ENABLE | SV_PCI_DMA_EXTENDED;
	data = ((u_int32_t)sdmaa & 0xfffffff0) | (data & 0x0f);
	FUNC17(dev, SV_PCI_DMAA, data, 4);
	FUNC0(FUNC22("dmaa: 0x%x 0x%x\n", data, FUNC15(dev, SV_PCI_DMAA, 4)));

	/* Cache resource short-cuts for dma_c */
	sc->dmac_rid = SV_PCI_DMAC;
	sc->dmac_type = SYS_RES_IOPORT;
	sc->dmac_reg  = FUNC2(dev, sc->dmac_type,
					       &sc->dmac_rid, RF_ACTIVE);
	if (sc->dmac_reg == NULL) {
		FUNC10(dev, "sv_attach: cannot allocate dmac\n");
		goto fail;
	}
	sc->dmac_st = FUNC24(sc->dmac_reg);
	sc->dmac_sh = FUNC23(sc->dmac_reg);

	/* Poke port into dma_c configuration, nb bit flags to enable dma */
	data = FUNC15(dev, SV_PCI_DMAC, 4) | SV_PCI_DMA_ENABLE | SV_PCI_DMA_EXTENDED;
	data = ((u_int32_t)sdmac & 0xfffffff0) | (data & 0x0f);
	FUNC17(dev, SV_PCI_DMAC, data, 4);
	FUNC0(FUNC22("dmac: 0x%x 0x%x\n", data, FUNC15(dev, SV_PCI_DMAC, 4)));

	if (bootverbose)
		FUNC22("Sonicvibes: revision %d.\n", sc->rev);

        if (FUNC20(dev, sc, 1, 1)) {
		FUNC10(dev, "sv_attach: pcm_register fail\n");
                goto fail;
	}

        FUNC18(dev, PCMDIR_PLAY, &svpchan_class, sc);
        FUNC18(dev, PCMDIR_REC,  &svrchan_class, sc);

        FUNC27(status, SND_STATUSLEN, "at io 0x%jx irq %jd %s",
                 FUNC25(sc->enh_reg),  FUNC25(sc->irq),FUNC1(snd_vibes));
        FUNC21(dev, status);

        FUNC0(FUNC22("sv_attach: succeeded\n"));

	return 0;

 fail:
	if (sc->parent_dmat)
		FUNC4(sc->parent_dmat);
        if (sc->ih)
		FUNC9(dev, sc->irq, sc->ih);
        if (sc->irq)
		FUNC7(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	if (sc->enh_reg)
		FUNC7(dev, sc->enh_type, sc->enh_rid, sc->enh_reg);
	if (sc->dmaa_reg)
		FUNC7(dev, sc->dmaa_type, sc->dmaa_rid, sc->dmaa_reg);
	if (sc->dmac_reg)
		FUNC7(dev, sc->dmac_type, sc->dmac_rid, sc->dmac_reg);
	return ENXIO;
}