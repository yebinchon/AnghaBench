#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sc_info {int adcn; int dacn; scalar_t__ lock; scalar_t__ mt; int /*<<< orphan*/  mtid; scalar_t__ ds; int /*<<< orphan*/  dsid; scalar_t__ ddma; int /*<<< orphan*/  ddmaid; scalar_t__ cs; int /*<<< orphan*/  csid; TYPE_2__* cfg; int /*<<< orphan*/ * dac; int /*<<< orphan*/ * adc; scalar_t__ dmat; scalar_t__ irq; int /*<<< orphan*/  irqid; scalar_t__ ih; scalar_t__ chnum; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {TYPE_1__* codec; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* destroy ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  M_ENVY24 ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct sc_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct sc_info*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (struct sc_info*) ; 
 int FUNC9 (struct sc_info*) ; 
 int /*<<< orphan*/  envy24chan_class ; 
 int /*<<< orphan*/  envy24mixer_class ; 
 int /*<<< orphan*/  FUNC10 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC24(device_t dev)
{
	struct sc_info 		*sc;
	char 			status[SND_STATUSLEN];
	int			err = 0;
	int			i;

#if(0)
	device_printf(dev, "envy24_pci_attach()\n");
#endif
	/* get sc_info data area */
	if ((sc = FUNC11(sizeof(*sc), M_ENVY24, M_NOWAIT)) == NULL) {
		FUNC5(dev, "cannot allocate softc\n");
		return ENXIO;
	}

	FUNC3(sc, sizeof(*sc));
	sc->lock = FUNC19(FUNC4(dev), "snd_envy24 softc");
	sc->dev = dev;

	/* initialize PCI interface */
	FUNC13(dev);

	/* allocate resources */
	err = FUNC6(sc);
	if (err) {
		FUNC5(dev, "unable to allocate system resources\n");
		goto bad;
	}

	/* initialize card */
	err = FUNC9(sc);
	if (err) {
		FUNC5(dev, "unable to initialize the card\n");
		goto bad;
	}

	/* set multi track mixer */
	FUNC12(dev, &envy24mixer_class, sc);

	/* set channel information */
	err = FUNC15(dev, sc, 5, 2 + sc->adcn);
	if (err)
		goto bad;
	sc->chnum = 0;
	for (i = 0; i < 5; i++) {
		FUNC14(dev, PCMDIR_PLAY, &envy24chan_class, sc);
		sc->chnum++;
	}
	for (i = 0; i < 2 + sc->adcn; i++) {
		FUNC14(dev, PCMDIR_REC, &envy24chan_class, sc);
		sc->chnum++;
	}

	/* set status iformation */
	FUNC21(status, SND_STATUSLEN,
	    "at io 0x%jx:%jd,0x%jx:%jd,0x%jx:%jd,0x%jx:%jd irq %jd",
	    FUNC18(sc->cs),
	    FUNC17(sc->cs) - FUNC18(sc->cs) + 1,
	    FUNC18(sc->ddma),
	    FUNC17(sc->ddma) - FUNC18(sc->ddma) + 1,
	    FUNC18(sc->ds),
	    FUNC17(sc->ds) - FUNC18(sc->ds) + 1,
	    FUNC18(sc->mt),
	    FUNC17(sc->mt) - FUNC18(sc->mt) + 1,
	    FUNC18(sc->irq));
	FUNC16(dev, status);

	return 0;

bad:
	if (sc->ih)
		FUNC2(dev, sc->irq, sc->ih);
	if (sc->irq)
		FUNC1(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC8(sc);
	if (sc->dmat)
		FUNC0(sc->dmat);
	if (sc->cfg->codec->destroy != NULL) {
                for (i = 0; i < sc->adcn; i++)
                        sc->cfg->codec->destroy(sc->adc[i]);
                for (i = 0; i < sc->dacn; i++)
                        sc->cfg->codec->destroy(sc->dac[i]);
        }
	FUNC7(sc->cfg);
	if (sc->cs)
		FUNC1(dev, SYS_RES_IOPORT, sc->csid, sc->cs);
	if (sc->ddma)
		FUNC1(dev, SYS_RES_IOPORT, sc->ddmaid, sc->ddma);
	if (sc->ds)
		FUNC1(dev, SYS_RES_IOPORT, sc->dsid, sc->ds);
	if (sc->mt)
		FUNC1(dev, SYS_RES_IOPORT, sc->mtid, sc->mt);
	if (sc->lock)
		FUNC20(sc->lock);
	FUNC10(sc, M_ENVY24);
	return err;
}