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
struct TYPE_2__ {int /*<<< orphan*/ * ich_func; } ;
struct atiixp_info {int polling; int codec_not_ready_bits; int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; int /*<<< orphan*/  reg; int /*<<< orphan*/ * codec; int /*<<< orphan*/  codec_found; scalar_t__ codec_idx; int /*<<< orphan*/  lock; TYPE_1__ delayed_attach; } ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,struct atiixp_info*,int /*<<< orphan*/ ) ; 
 int AC97_F_EAPD_INV ; 
 int ATI_IXP_NPCHAN ; 
 int ATI_IXP_NRCHAN ; 
 int ATI_REG_ISR_CODEC0_NOT_READY ; 
 int ATI_REG_ISR_CODEC1_NOT_READY ; 
 int ATI_REG_ISR_CODEC2_NOT_READY ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PWAIT ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  atiixp_ac97 ; 
 int /*<<< orphan*/  atiixp_chan_class ; 
 int /*<<< orphan*/  FUNC7 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct atiixp_info*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct atiixp_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct atiixp_info*) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,struct atiixp_info*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_atiixp ; 
 int /*<<< orphan*/  FUNC25 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sysctl_atiixp_polling ; 

__attribute__((used)) static void
FUNC26(void *arg)
{
	struct atiixp_info *sc = (struct atiixp_info *)arg;
	uint32_t subdev;
	int i, timeout, found, polling;
	char status[SND_STATUSLEN];

	FUNC9(sc);

	if (sc->delayed_attach.ich_func) {
		FUNC12(&sc->delayed_attach);
		sc->delayed_attach.ich_func = NULL;
	}

	polling = sc->polling;
	sc->polling = 0;

	timeout = 10;
	if (sc->codec_not_ready_bits == 0) {
		/* wait for the interrupts to happen */
		do {
			FUNC18(sc, sc->lock, PWAIT, "ixpslp", FUNC16(hz / 10, 1));
			if (sc->codec_not_ready_bits != 0)
				break;
		} while (--timeout);
	}

	sc->polling = polling;
	FUNC7(sc);

	if (sc->codec_not_ready_bits == 0 && timeout == 0) {
		FUNC15(sc->dev,
			"WARNING: timeout during codec detection; "
			"codecs might be present but haven't interrupted\n");
		FUNC11(sc);
		goto postinitbad;
	}

	found = 0;

	/*
	 * ATI IXP can have upto 3 codecs, but single codec should be
	 * suffice for now.
	 */
	if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC0_NOT_READY)) {
		/* codec 0 present */
		sc->codec_found++;
		sc->codec_idx = 0;
		found++;
	}

	if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC1_NOT_READY)) {
		/* codec 1 present */
		sc->codec_found++;
	}

	if (!(sc->codec_not_ready_bits & ATI_REG_ISR_CODEC2_NOT_READY)) {
		/* codec 2 present */
		sc->codec_found++;
	}

	FUNC11(sc);

	if (found == 0)
		goto postinitbad;

	/* create/init mixer */
	sc->codec = FUNC0(sc->dev, sc, atiixp_ac97);
	if (sc->codec == NULL)
		goto postinitbad;

	subdev = (FUNC19(sc->dev) << 16) |
	    FUNC20(sc->dev);
	switch (subdev) {
	case 0x11831043:	/* ASUS A6R */
	case 0x2043161f:	/* Maxselect x710s - http://maxselect.ru/ */
		FUNC6(sc->codec, FUNC4(sc->codec) |
		    AC97_F_EAPD_INV);
		break;
	default:
		break;
	}

	FUNC17(sc->dev, FUNC5(), sc->codec);

	if (FUNC22(sc->dev, sc, ATI_IXP_NPCHAN, ATI_IXP_NRCHAN))
		goto postinitbad;

	for (i = 0; i < ATI_IXP_NPCHAN; i++)
		FUNC21(sc->dev, PCMDIR_PLAY, &atiixp_chan_class, sc);
	for (i = 0; i < ATI_IXP_NRCHAN; i++)
		FUNC21(sc->dev, PCMDIR_REC, &atiixp_chan_class, sc);

	FUNC2(FUNC13(sc->dev),
	    FUNC3(FUNC14(sc->dev)), OID_AUTO,
	    "polling", CTLTYPE_INT | CTLFLAG_RW, sc->dev, sizeof(sc->dev),
	    sysctl_atiixp_polling, "I", "Enable polling mode");

	FUNC25(status, SND_STATUSLEN, "at memory 0x%jx irq %jd %s",
	    FUNC24(sc->reg), FUNC24(sc->irq),
	    FUNC1(snd_atiixp));

	FUNC23(sc->dev, status);

	FUNC9(sc);
	if (sc->polling == 0)
		FUNC8(sc);
	FUNC11(sc);

	return;

postinitbad:
	FUNC10(sc);
}