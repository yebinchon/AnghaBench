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
struct sc_info {scalar_t__ regtype; scalar_t__ parent_dmat; int /*<<< orphan*/ * irq; void* irqid; scalar_t__ ih; int /*<<< orphan*/ * mem; void* memid; int /*<<< orphan*/ * reg; void* regid; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int /*<<< orphan*/  CS4281_DEFAULT_BUFSZ ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC1 (int) ; 
 scalar_t__ PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 scalar_t__ SYS_RES_IOPORT ; 
 scalar_t__ SYS_RES_IRQ ; 
 scalar_t__ SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__,void**,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  cs4281_ac97 ; 
 int FUNC11 (struct sc_info*) ; 
 int /*<<< orphan*/  cs4281_intr ; 
 int /*<<< orphan*/  FUNC12 (struct sc_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cs4281chan_class ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  snd_cs4281 ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC29 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC30(device_t dev)
{
    struct sc_info *sc;
    struct ac97_info *codec = NULL;
    char status[SND_STATUSLEN];

    sc = FUNC15(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
    sc->dev = dev;
    sc->type = FUNC18(dev);

    FUNC17(dev);

    if (FUNC19(dev) != PCI_POWERSTATE_D0) {
	/* Reset the power state. */
	FUNC13(dev, "chip is in D%d power mode "
		      "-- setting to D0\n", FUNC19(dev));

	FUNC20(dev, PCI_POWERSTATE_D0);
    }

    sc->regid   = FUNC1(0);
    sc->regtype = SYS_RES_MEMORY;
    sc->reg = FUNC5(dev, sc->regtype, &sc->regid, RF_ACTIVE);
    if (!sc->reg) {
	sc->regtype = SYS_RES_IOPORT;
	sc->reg = FUNC5(dev, sc->regtype, &sc->regid,
					 RF_ACTIVE);
	if (!sc->reg) {
	    FUNC13(dev, "unable to allocate register space\n");
	    goto bad;
	}
    }
    sc->st = FUNC26(sc->reg);
    sc->sh = FUNC25(sc->reg);

    sc->memid = FUNC1(1);
    sc->mem = FUNC5(dev, SYS_RES_MEMORY, &sc->memid,
				     RF_ACTIVE);
    if (sc->mem == NULL) {
	FUNC13(dev, "unable to allocate fifo space\n");
	goto bad;
    }

    sc->irqid = 0;
    sc->irq = FUNC5(dev, SYS_RES_IRQ, &sc->irqid,
				     RF_ACTIVE | RF_SHAREABLE);
    if (!sc->irq) {
	FUNC13(dev, "unable to allocate interrupt\n");
	goto bad;
    }

    if (FUNC28(dev, sc->irq, 0, cs4281_intr, sc, &sc->ih)) {
	FUNC13(dev, "unable to setup interrupt\n");
	goto bad;
    }

    sc->bufsz = FUNC22(dev, 4096, CS4281_DEFAULT_BUFSZ, 65536);

    if (FUNC6(/*parent*/FUNC8(dev), /*alignment*/2,
			   /*boundary*/0,
			   /*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
			   /*highaddr*/BUS_SPACE_MAXADDR,
			   /*filter*/NULL, /*filterarg*/NULL,
			   /*maxsize*/sc->bufsz, /*nsegments*/1,
			   /*maxsegz*/0x3ffff,
			   /*flags*/0, /*lockfunc*/busdma_lock_mutex,
			   /*lockarg*/&Giant, &sc->parent_dmat) != 0) {
	FUNC13(dev, "unable to create dma tag\n");
	goto bad;
    }

    /* power up */
    FUNC12(sc, 0);

    /* init chip */
    if (FUNC11(sc) == -1) {
	FUNC13(dev, "unable to initialize the card\n");
	goto bad;
    }

    /* create/init mixer */
    codec = FUNC0(dev, sc, cs4281_ac97);
    if (codec == NULL)
        goto bad;

    FUNC16(dev, FUNC4(), codec);

    if (FUNC23(dev, sc, 1, 1))
	goto bad;

    FUNC21(dev, PCMDIR_PLAY, &cs4281chan_class, sc);
    FUNC21(dev, PCMDIR_REC, &cs4281chan_class, sc);

    FUNC29(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
	     (sc->regtype == SYS_RES_IOPORT)? "io" : "memory",
	     FUNC27(sc->reg), FUNC27(sc->irq),FUNC2(snd_cs4281));
    FUNC24(dev, status);

    return 0;

 bad:
    if (codec)
	FUNC3(codec);
    if (sc->reg)
	FUNC9(dev, sc->regtype, sc->regid, sc->reg);
    if (sc->mem)
	FUNC9(dev, SYS_RES_MEMORY, sc->memid, sc->mem);
    if (sc->ih)
	FUNC10(dev, sc->irq, sc->ih);
    if (sc->irq)
	FUNC9(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
    if (sc->parent_dmat)
	FUNC7(sc->parent_dmat);
    FUNC14(sc, M_DEVBUF);

    return ENXIO;
}