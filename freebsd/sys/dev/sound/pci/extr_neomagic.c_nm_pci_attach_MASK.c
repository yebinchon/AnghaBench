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
struct sc_info {void* irq; void* irqid; scalar_t__ ih; void* reg; void* regid; void* buf; void* bufid; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct sc_info*,int /*<<< orphan*/ ) ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int /*<<< orphan*/  SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct sc_info*,int /*<<< orphan*/ ) ; 
 struct sc_info* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  nm_ac97 ; 
 int FUNC12 (struct sc_info*) ; 
 int /*<<< orphan*/  nm_intr ; 
 int /*<<< orphan*/  nmchan_class ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sc_info*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct sc_info*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  snd_neomagic ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sc_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC21(device_t dev)
{
	struct sc_info *sc;
	struct ac97_info *codec = NULL;
	char 		status[SND_STATUSLEN];

	sc = FUNC10(sizeof(*sc), M_DEVBUF, M_WAITOK | M_ZERO);
	sc->dev = dev;
	sc->type = FUNC14(dev);

	FUNC13(dev);

	sc->bufid = FUNC1(0);
	sc->buf = FUNC5(dev, SYS_RES_MEMORY, &sc->bufid,
					 RF_ACTIVE);
	sc->regid = FUNC1(1);
	sc->reg = FUNC5(dev, SYS_RES_MEMORY, &sc->regid,
					 RF_ACTIVE);

	if (!sc->buf || !sc->reg) {
		FUNC8(dev, "unable to map register space\n");
		goto bad;
	}

	if (FUNC12(sc) == -1) {
		FUNC8(dev, "unable to initialize the card\n");
		goto bad;
	}

	codec = FUNC0(dev, sc, nm_ac97);
	if (codec == NULL) goto bad;
	if (FUNC11(dev, FUNC4(), codec) == -1) goto bad;

	sc->irqid = 0;
	sc->irq = FUNC5(dev, SYS_RES_IRQ, &sc->irqid,
					 RF_ACTIVE | RF_SHAREABLE);
	if (!sc->irq || FUNC19(dev, sc->irq, 0, nm_intr, sc, &sc->ih)) {
		FUNC8(dev, "unable to map interrupt\n");
		goto bad;
	}

	FUNC20(status, SND_STATUSLEN, "at memory 0x%jx, 0x%jx irq %jd %s",
		 FUNC18(sc->buf), FUNC18(sc->reg),
		 FUNC18(sc->irq),FUNC2(snd_neomagic));

	if (FUNC16(dev, sc, 1, 1)) goto bad;
	FUNC15(dev, PCMDIR_REC, &nmchan_class, sc);
	FUNC15(dev, PCMDIR_PLAY, &nmchan_class, sc);
	FUNC17(dev, status);

	return 0;

bad:
	if (codec) FUNC3(codec);
	if (sc->buf) FUNC6(dev, SYS_RES_MEMORY, sc->bufid, sc->buf);
	if (sc->reg) FUNC6(dev, SYS_RES_MEMORY, sc->regid, sc->reg);
	if (sc->ih) FUNC7(dev, sc->irq, sc->ih);
	if (sc->irq) FUNC6(dev, SYS_RES_IRQ, sc->irqid, sc->irq);
	FUNC9(sc, M_DEVBUF);
	return ENXIO;
}