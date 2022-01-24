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
struct resource {int dummy; } ;
struct agg_info {int bufsz; int regid; int irqid; int /*<<< orphan*/  lock; int /*<<< orphan*/ * buf_dmat; int /*<<< orphan*/ * stat_dmat; int /*<<< orphan*/  stat_map; int /*<<< orphan*/ * stat; int /*<<< orphan*/  playchns; int /*<<< orphan*/  pch; struct ac97_info* codec; void* ih; struct resource* irq; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; struct resource* reg; int /*<<< orphan*/  curpwr; scalar_t__ phys; int /*<<< orphan*/  dev; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AGG_DEFAULT_BUFSZ ; 
 int AGG_MAXPLAYCH ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  INTR_MPSAFE ; 
 int /*<<< orphan*/  MAESTRO_MAXADDR ; 
 int MTX_DEF ; 
 int MTX_RECURSE ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  PCI_POWERSTATE_D3 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int /*<<< orphan*/  SYS_RES_IOPORT ; 
 int /*<<< orphan*/  SYS_RES_IRQ ; 
 int WAVCACHE_BASEADDR_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  agg_ac97 ; 
 int /*<<< orphan*/  agg_intr ; 
 int /*<<< orphan*/  FUNC5 (struct agg_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct agg_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct agg_info*) ; 
 int /*<<< orphan*/  aggpch_class ; 
 int /*<<< orphan*/  aggrch_class ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct resource*,void*) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct agg_info*,int /*<<< orphan*/ ) ; 
 struct agg_info* FUNC22 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct agg_info*) ; 
 int FUNC34 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC35 (int /*<<< orphan*/ ,struct agg_info*,int,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  powerstate_init ; 
 scalar_t__ FUNC37 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC38 (struct resource*) ; 
 int /*<<< orphan*/  FUNC39 (struct resource*) ; 
 int /*<<< orphan*/  FUNC40 (struct resource*) ; 
 int /*<<< orphan*/  FUNC41 (struct resource*) ; 
 scalar_t__ FUNC42 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct agg_info*,void**) ; 
 int /*<<< orphan*/  FUNC43 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC44(device_t dev)
{
	struct agg_info	*ess = NULL;
	u_int32_t	data;
	int	regid = FUNC1(0);
	struct resource	*reg = NULL;
	struct ac97_info	*codec = NULL;
	int	irqid = 0;
	struct resource	*irq = NULL;
	void	*ih = NULL;
	char	status[SND_STATUSLEN];
	int	dacn, ret = 0;

	ess = FUNC22(sizeof(*ess), M_DEVBUF, M_WAITOK | M_ZERO);
	ess->dev = dev;

	FUNC26(&ess->lock, FUNC15(dev), "snd_maestro softc",
		 MTX_DEF | MTX_RECURSE);
	if (!FUNC27(&ess->lock)) {
		FUNC18(dev, "failed to create a mutex.\n");
		ret = ENOMEM;
		goto bad;
	}

	if (FUNC37(FUNC16(dev), FUNC17(dev),
	    "dac", &dacn) == 0) {
	    	if (dacn < 1)
			dacn = 1;
		else if (dacn > AGG_MAXPLAYCH)
			dacn = AGG_MAXPLAYCH;
	} else
		dacn = AGG_MAXPLAYCH;

	ess->bufsz = FUNC34(dev, 4096, AGG_DEFAULT_BUFSZ, 65536);
	if (FUNC10(/*parent*/ FUNC12(dev),
			       /*align */ 4, 1 << (16+1),
			       /*limit */ MAESTRO_MAXADDR, BUS_SPACE_MAXADDR,
			       /*filter*/ NULL, NULL,
			       /*size  */ ess->bufsz, 1, 0x3ffff,
			       /*flags */ 0,
			       /*lock  */ busdma_lock_mutex, &Giant,
			       &ess->buf_dmat) != 0) {
		FUNC18(dev, "unable to create dma tag\n");
		ret = ENOMEM;
		goto bad;
	}

	if (FUNC10(/*parent*/ FUNC12(dev),
			       /*align */ 1 << WAVCACHE_BASEADDR_SHIFT,
			                  1 << (16+1),
			       /*limit */ MAESTRO_MAXADDR, BUS_SPACE_MAXADDR,
			       /*filter*/ NULL, NULL,
			       /*size  */ 3*ess->bufsz, 1, 0x3ffff,
			       /*flags */ 0,
			       /*lock  */ busdma_lock_mutex, &Giant,
			       &ess->stat_dmat) != 0) {
		FUNC18(dev, "unable to create dma tag\n");
		ret = ENOMEM;
		goto bad;
	}

	/* Allocate the room for brain-damaging status buffer. */
	ess->stat = FUNC20(ess->stat_dmat, 3*ess->bufsz, &ess->phys,
	    &ess->stat_map);
	if (ess->stat == NULL) {
		FUNC18(dev, "cannot allocate status buffer\n");
		ret = ENOMEM;
		goto bad;
	}
	if (bootverbose)
		FUNC18(dev, "Maestro status/record buffer: %#llx\n",
		    (long long)ess->phys);

	/* State D0-uninitialized. */
	ess->curpwr = PCI_POWERSTATE_D3;
	FUNC32(dev, PCI_POWERSTATE_D0);

	FUNC28(dev);

	/* Allocate resources. */
	reg = FUNC9(dev, SYS_RES_IOPORT, &regid, RF_ACTIVE);
	if (reg != NULL) {
		ess->reg = reg;
		ess->regid = regid;
		ess->st = FUNC39(reg);
		ess->sh = FUNC38(reg);
	} else {
		FUNC18(dev, "unable to map register space\n");
		ret = ENXIO;
		goto bad;
	}
	irq = FUNC9(dev, SYS_RES_IRQ, &irqid,
	    RF_ACTIVE | RF_SHAREABLE);
	if (irq != NULL) {
		ess->irq = irq;
		ess->irqid = irqid;
	} else {
		FUNC18(dev, "unable to map interrupt\n");
		ret = ENXIO;
		goto bad;
	}

	/* Setup resources. */
	if (FUNC42(dev, irq, INTR_MPSAFE, agg_intr, ess, &ih)) {
		FUNC18(dev, "unable to setup interrupt\n");
		ret = ENXIO;
		goto bad;
	} else
		ess->ih = ih;

	/* Transition from D0-uninitialized to D0. */
	FUNC5(ess);
	FUNC6(ess, PCI_POWERSTATE_D0);
	if (FUNC7(ess, 0) == 0x80) {
		/* XXX - TODO: PT101 */
		FUNC8(ess);
		FUNC18(dev, "PT101 codec detected!\n");
		ret = ENXIO;
		goto bad;
	}
	FUNC8(ess);
	codec = FUNC0(dev, ess, agg_ac97);
	if (codec == NULL) {
		FUNC18(dev, "failed to create AC97 codec softc!\n");
		ret = ENOMEM;
		goto bad;
	}
	if (FUNC24(dev, FUNC3(), codec) == -1) {
		FUNC18(dev, "mixer initialization failed!\n");
		ret = ENXIO;
		goto bad;
	}
	ess->codec = codec;

	ret = FUNC35(dev, ess, dacn, 1);
	if (ret)
		goto bad;

	FUNC23(dev);
	FUNC5(ess);
	FUNC6(ess, powerstate_init);
	FUNC8(ess);
	for (data = 0; data < dacn; data++)
		FUNC33(dev, PCMDIR_PLAY, &aggpch_class, ess);
	FUNC33(dev, PCMDIR_REC, &aggrch_class, ess);
	FUNC4(ess->pch, ess->playchns, ess->bufsz);

	FUNC43(status, SND_STATUSLEN,
	    "port 0x%jx-0x%jx irq %jd at device %d.%d on pci%d",
	    FUNC41(reg), FUNC40(reg), FUNC41(irq),
	    FUNC31(dev), FUNC30(dev), FUNC29(dev));
	FUNC36(dev, status);

	return 0;

 bad:
	if (codec != NULL)
		FUNC2(codec);
	if (ih != NULL)
		FUNC14(dev, irq, ih);
	if (irq != NULL)
		FUNC13(dev, SYS_RES_IRQ, irqid, irq);
	if (reg != NULL)
		FUNC13(dev, SYS_RES_IOPORT, regid, reg);
	if (ess != NULL) {
		if (ess->stat != NULL)
			FUNC19(ess->stat_dmat, ess->stat, ess->stat_map);
		if (ess->stat_dmat != NULL)
			FUNC11(ess->stat_dmat);
		if (ess->buf_dmat != NULL)
			FUNC11(ess->buf_dmat);
		if (FUNC27(&ess->lock))
			FUNC25(&ess->lock);
		FUNC21(ess, M_DEVBUF);
	}

	return ret;
}