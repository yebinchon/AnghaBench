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
typedef  int u_int32_t ;
struct sndcard_func {int /*<<< orphan*/  func; } ;
struct sbc_softc {int bd_ver; void* child_midi2; void* child_midi1; void* child_pcm; int /*<<< orphan*/ * ih; TYPE_1__* ihl; struct resource** irq; int /*<<< orphan*/ * io; struct resource** drq; int /*<<< orphan*/  dev; } ;
struct resource {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {struct sbc_softc* parent; } ;

/* Variables and functions */
 int BD_F_DUP_MIDI ; 
 int BD_F_ESS ; 
 int BD_F_MIX_CT1335 ; 
 int BD_F_MIX_CT1345 ; 
 int BD_F_MIX_CT1745 ; 
 int BD_F_SB16 ; 
 int BD_F_SB16X ; 
 int /*<<< orphan*/  DMA_NR ; 
 int DV_F_DRQ_MASK ; 
 int DV_F_DUAL_DMA ; 
 int ENXIO ; 
 int IRQ_MAX ; 
 int /*<<< orphan*/  IRQ_NR ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  SCF_MIDI ; 
 int /*<<< orphan*/  SCF_PCM ; 
 int /*<<< orphan*/  SCF_SYNTH ; 
 int /*<<< orphan*/  SYS_RES_DRQ ; 
 scalar_t__ FUNC0 (struct sbc_softc*) ; 
 int /*<<< orphan*/  bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sbc_softc*,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sbc_softc* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (void*,struct sndcard_func*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 struct sndcard_func* FUNC10 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct sbc_softc*) ; 
 int FUNC13 (struct resource*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  sbc_intr ; 
 int /*<<< orphan*/  FUNC17 (struct sbc_softc*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC19(device_t dev)
{
	char *err = NULL;
	struct sbc_softc *scp;
	struct sndcard_func *func;
	u_int32_t logical_id = FUNC9(dev);
    	int flags = FUNC5(dev);
	int f, dh, dl, x, irq, i;

    	if (!logical_id && (flags & DV_F_DUAL_DMA)) {
        	FUNC2(dev, SYS_RES_DRQ, 1,
				 flags & DV_F_DRQ_MASK, 1);
    	}

	scp = FUNC6(dev);
	FUNC3(scp, sizeof(*scp));
	scp->dev = dev;
	FUNC17(scp);
	err = "alloc_resource";
	if (FUNC0(scp)) goto bad;

	err = "sb_reset_dsp";
	if (FUNC15(scp->io[0])) goto bad;
	err = "sb_identify_board";
	scp->bd_ver = FUNC14(scp->io[0]) & 0x00000fff;
	if (scp->bd_ver == 0) goto bad;
	f = 0;
	if (logical_id == 0x01200000 && scp->bd_ver < 0x0400) scp->bd_ver = 0x0499;
	switch ((scp->bd_ver & 0x0f00) >> 8) {
    	case 1: /* old sound blaster has nothing... */
		break;

    	case 2:
		f |= BD_F_DUP_MIDI;
		if (scp->bd_ver > 0x200) f |= BD_F_MIX_CT1335;
		break;

	case 5:
		f |= BD_F_ESS;
		scp->bd_ver = 0x0301;
    	case 3:
		f |= BD_F_DUP_MIDI | BD_F_MIX_CT1345;
		break;

    	case 4:
    		f |= BD_F_SB16 | BD_F_MIX_CT1745;
		if (scp->drq[0]) dl = FUNC13(scp->drq[0]); else dl = -1;
		if (scp->drq[1]) dh = FUNC13(scp->drq[1]); else dh = dl;
		if (!logical_id && (dh < dl)) {
			struct resource *r;
			r = scp->drq[0];
			scp->drq[0] = scp->drq[1];
			scp->drq[1] = r;
			dl = FUNC13(scp->drq[0]);
			dh = FUNC13(scp->drq[1]);
		}
		/* soft irq/dma configuration */
		x = -1;
		irq = FUNC13(scp->irq[0]);
		if      (irq == 5) x = 2;
		else if (irq == 7) x = 4;
		else if (irq == 9) x = 1;
		else if (irq == 10) x = 8;
		if (x == -1) {
			err = "bad irq (5/7/9/10 valid)";
			goto bad;
		}
		else FUNC16(scp->io[0], IRQ_NR, x);
		FUNC16(scp->io[0], DMA_NR, (1 << dh) | (1 << dl));
		if (bootverbose) {
			FUNC7(dev, "setting card to irq %d, drq %d", irq, dl);
			if (dl != dh) FUNC11(", %d", dh);
			FUNC11("\n");
    		}
		break;
    	}

	switch (logical_id) {
    	case 0x43008c0e:	/* CTL0043 */
	case 0x01200000:
	case 0x01000000:
		f |= BD_F_SB16X;
		break;
	}
	scp->bd_ver |= f << 16;

	err = "setup_intr";
	for (i = 0; i < IRQ_MAX; i++) {
		scp->ihl[i].parent = scp;
		if (FUNC18(dev, scp->irq[i], 0, sbc_intr, &scp->ihl[i], &scp->ih[i]))
			goto bad;
	}

	/* PCM Audio */
	func = FUNC10(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (func == NULL) goto bad;
	func->func = SCF_PCM;
	scp->child_pcm = FUNC4(dev, "pcm", -1);
	FUNC8(scp->child_pcm, func);

	/* Midi Interface */
	func = FUNC10(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (func == NULL) goto bad;
	func->func = SCF_MIDI;
	scp->child_midi1 = FUNC4(dev, "midi", -1);
	FUNC8(scp->child_midi1, func);

	/* OPL FM Synthesizer */
	func = FUNC10(sizeof(struct sndcard_func), M_DEVBUF, M_NOWAIT | M_ZERO);
	if (func == NULL) goto bad;
	func->func = SCF_SYNTH;
	scp->child_midi2 = FUNC4(dev, "midi", -1);
	FUNC8(scp->child_midi2, func);

	/* probe/attach kids */
	FUNC1(dev);

	return (0);

bad:	if (err) FUNC7(dev, "%s\n", err);
	FUNC12(scp);
	return (ENXIO);
}