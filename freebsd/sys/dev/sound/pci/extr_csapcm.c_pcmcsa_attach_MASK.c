#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sndcard_func {TYPE_3__* varinfo; } ;
struct TYPE_12__ {int /*<<< orphan*/  irq; scalar_t__ irq_rid; void* mem_rid; void* io_rid; } ;
struct TYPE_9__ {int dma; } ;
struct TYPE_8__ {int dma; } ;
struct csa_info {int /*<<< orphan*/  ih; TYPE_4__* card; TYPE_5__ res; TYPE_3__* binfo; scalar_t__ active; TYPE_2__ rch; TYPE_1__ pch; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  TYPE_5__ csa_res ;
struct TYPE_11__ {scalar_t__ inv_eapd; } ;
struct TYPE_10__ {TYPE_4__* card; } ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct csa_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AC97_F_EAPD_INV ; 
 int /*<<< orphan*/  BA1_CIE ; 
 int /*<<< orphan*/  BA1_PFIE ; 
 int ENXIO ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct ac97_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  csa_ac97 ; 
 int /*<<< orphan*/  FUNC6 (struct csa_info*,int) ; 
 scalar_t__ FUNC7 (struct csa_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct csa_info*) ; 
 int /*<<< orphan*/  csa_intr ; 
 int FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct csa_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  csachan_class ; 
 struct sndcard_func* FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 struct csa_info* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct csa_info*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,struct csa_info*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  snd_csa ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct csa_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(device_t dev)
{
	struct csa_info *csa;
	csa_res *resp;
	int unit;
	char status[SND_STATUSLEN];
	struct ac97_info *codec;
	struct sndcard_func *func;

	csa = FUNC14(sizeof(*csa), M_DEVBUF, M_WAITOK | M_ZERO);
	unit = FUNC13(dev);
	func = FUNC12(dev);
	csa->binfo = func->varinfo;
	/*
	 * Fake the status of DMA so that the initial value of
	 * PCTL and CCTL can be stored into csa->pctl and csa->cctl,
	 * respectively.
	 */
	csa->pch.dma = csa->rch.dma = 1;
	csa->active = 0;
	csa->card = csa->binfo->card;

	/* Allocate the resources. */
	resp = &csa->res;
	resp->io_rid = FUNC1(0);
	resp->mem_rid = FUNC1(1);
	resp->irq_rid = 0;
	if (FUNC7(csa, dev)) {
		FUNC10(csa, dev);
		return (ENXIO);
	}

	FUNC6(csa, 1);
	if (FUNC8(csa)) {
		FUNC10(csa, dev);
		return (ENXIO);
	}
	codec = FUNC0(dev, csa, csa_ac97);
	if (codec == NULL) {
		FUNC10(csa, dev);
		return (ENXIO);
	}
	if (csa->card->inv_eapd)
		FUNC5(codec, AC97_F_EAPD_INV);
	if (FUNC15(dev, FUNC4(), codec) == -1) {
		FUNC3(codec);
		FUNC10(csa, dev);
		return (ENXIO);
	}

	FUNC21(status, SND_STATUSLEN, "at irq %jd %s",
			FUNC19(resp->irq),FUNC2(snd_csa));

	/* Enable interrupt. */
	if (FUNC20(dev, resp->irq, 0, csa_intr, csa, &csa->ih)) {
		FUNC3(codec);
		FUNC10(csa, dev);
		return (ENXIO);
	}
	FUNC11(resp, BA1_PFIE, FUNC9(resp, BA1_PFIE) & ~0x0000f03f);
	FUNC11(resp, BA1_CIE, (FUNC9(resp, BA1_CIE) & ~0x0000003f) | 0x00000001);
	FUNC6(csa, -1);

	if (FUNC17(dev, csa, 1, 1)) {
		FUNC3(codec);
		FUNC10(csa, dev);
		return (ENXIO);
	}
	FUNC16(dev, PCMDIR_REC, &csachan_class, csa);
	FUNC16(dev, PCMDIR_PLAY, &csachan_class, csa);
	FUNC18(dev, status);

	return (0);
}