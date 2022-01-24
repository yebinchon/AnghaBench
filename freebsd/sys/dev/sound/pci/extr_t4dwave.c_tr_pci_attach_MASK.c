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
struct tr_info {int type; scalar_t__ lock; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int /*<<< orphan*/  regtype; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  hwchns; scalar_t__ playchns; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  rev; } ;
struct ac97_info {int dummy; } ;
typedef  struct tr_info device_t ;
typedef  int /*<<< orphan*/  bus_addr_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (struct tr_info,struct tr_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ALI_BUFSZ ; 
 int /*<<< orphan*/  ALI_MAXADDR ; 
 int /*<<< orphan*/  ALI_MAXHWCH ; 
 int ALI_MAXPLAYCH ; 
#define  ALI_PCI_ID 128 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_TEMP ; 
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
 int /*<<< orphan*/  TR_BUFALGN ; 
 int /*<<< orphan*/  TR_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  TR_MAXADDR ; 
 int /*<<< orphan*/  TR_MAXHWCH ; 
 int TR_MAXPLAYCH ; 
 int /*<<< orphan*/  FUNC3 (struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ bootverbose ; 
 void* FUNC5 (struct tr_info,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC9 (struct tr_info,int /*<<< orphan*/ ,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC10 (struct tr_info,void*,scalar_t__) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct tr_info**,int*) ; 
 int /*<<< orphan*/  FUNC12 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC13 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC14 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC15 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC16 (struct tr_info,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (struct tr_info*,int /*<<< orphan*/ ) ; 
 struct tr_info* FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (struct tr_info,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC20 (struct tr_info) ; 
 int FUNC21 (struct tr_info) ; 
 int /*<<< orphan*/  FUNC22 (struct tr_info) ; 
 int FUNC23 (struct tr_info,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct tr_info,int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (struct tr_info,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct tr_info*) ; 
 int /*<<< orphan*/  FUNC26 (struct tr_info,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC27 (struct tr_info,struct tr_info*,int,int) ; 
 int /*<<< orphan*/  FUNC28 (struct tr_info,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,int) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC31 (void*) ; 
 int /*<<< orphan*/  FUNC32 (void*) ; 
 int /*<<< orphan*/  FUNC33 (void*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC35 (scalar_t__) ; 
 scalar_t__ FUNC36 (struct tr_info,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tr_info*,scalar_t__*) ; 
 int /*<<< orphan*/  snd_t4dwave ; 
 int /*<<< orphan*/  FUNC37 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tr_ac97 ; 
 int FUNC38 (struct tr_info*) ; 
 int /*<<< orphan*/  tr_intr ; 
 int /*<<< orphan*/  trpchan_class ; 
 int /*<<< orphan*/  trrchan_class ; 

__attribute__((used)) static int
FUNC39(device_t dev)
{
	struct tr_info *tr;
	struct ac97_info *codec = NULL;
	bus_addr_t	lowaddr;
	int		i, dacn;
	char 		status[SND_STATUSLEN];
#ifdef __sparc64__
	device_t	*children;
	int		nchildren;
	u_int32_t	data;
#endif

	tr = FUNC18(sizeof(*tr), M_DEVBUF, M_WAITOK | M_ZERO);
	tr->type = FUNC21(dev);
	tr->rev = FUNC22(dev);
	tr->lock = FUNC34(FUNC13(dev), "snd_t4dwave softc");

	if (FUNC30(FUNC12(dev), FUNC15(dev),
	    "dac", &i) == 0) {
	    	if (i < 1)
			dacn = 1;
		else if (i > TR_MAXPLAYCH)
			dacn = TR_MAXPLAYCH;
		else
			dacn = i;
	} else {
		switch (tr->type) {
		case ALI_PCI_ID:
			dacn = ALI_MAXPLAYCH;
			break;
		default:
			dacn = TR_MAXPLAYCH;
			break;
		}
	}

	FUNC20(dev);

	tr->regid = FUNC1(0);
	tr->regtype = SYS_RES_IOPORT;
	tr->reg = FUNC5(dev, tr->regtype, &tr->regid,
		RF_ACTIVE);
	if (tr->reg) {
		tr->st = FUNC32(tr->reg);
		tr->sh = FUNC31(tr->reg);
	} else {
		FUNC16(dev, "unable to map register space\n");
		goto bad;
	}

	if (FUNC38(tr) == -1) {
		FUNC16(dev, "unable to initialize the card\n");
		goto bad;
	}
	tr->playchns = 0;

	codec = FUNC0(dev, tr, tr_ac97);
	if (codec == NULL) goto bad;
	if (FUNC19(dev, FUNC4(), codec) == -1) goto bad;

	tr->irqid = 0;
	tr->irq = FUNC5(dev, SYS_RES_IRQ, &tr->irqid,
				 RF_ACTIVE | RF_SHAREABLE);
	if (!tr->irq || FUNC36(dev, tr->irq, 0, tr_intr, tr, &tr->ih)) {
		FUNC16(dev, "unable to map interrupt\n");
		goto bad;
	}

	if (tr->type == ALI_PCI_ID) {
		/*
		 * The M5451 generates 31 bit of DMA and in order to do
		 * 32-bit DMA, the 31st bit can be set via its accompanying
		 * ISA bridge.  Note that we can't predict whether bus_dma(9)
		 * will actually supply us with a 32-bit buffer and even when
		 * using a low address of BUS_SPACE_MAXADDR_32BIT for both
		 * we might end up with the play buffer being in the 32-bit
		 * range while the record buffer isn't or vice versa. So we
		 * limit enabling the 31st bit to sparc64, where the IOMMU
		 * guarantees that we're using a 32-bit address (and in turn
		 * requires it).
		 */
		lowaddr = ALI_MAXADDR;
#ifdef __sparc64__
		if (device_get_children(device_get_parent(dev), &children,
		    &nchildren) == 0) {
			for (i = 0; i < nchildren; i++) {
				if (pci_get_devid(children[i]) == 0x153310b9) {
					lowaddr = BUS_SPACE_MAXADDR_32BIT;
					data = pci_read_config(children[i],
					    0x7e, 1);
					if (bootverbose)
						device_printf(dev,
						    "M1533 0x7e: 0x%x -> ",
						    data);
					data |= 0x1;
					if (bootverbose)
						printf("0x%x\n", data);
					pci_write_config(children[i], 0x7e,
					    data, 1);
					break;
				}
			}
		}
		free(children, M_TEMP);
#endif
		tr->hwchns = ALI_MAXHWCH;
		tr->bufsz = ALI_BUFSZ;
	} else {
		lowaddr = TR_MAXADDR;
		tr->hwchns = TR_MAXHWCH;
		tr->bufsz = FUNC26(dev, 4096, TR_DEFAULT_BUFSZ,
		    65536);
	}

	if (FUNC6(/*parent*/FUNC8(dev),
		/*alignment*/TR_BUFALGN,
		/*boundary*/0,
		/*lowaddr*/lowaddr,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/tr->bufsz, /*nsegments*/1, /*maxsegz*/tr->bufsz,
		/*flags*/0, /*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant, &tr->parent_dmat) != 0) {
		FUNC16(dev, "unable to create dma tag\n");
		goto bad;
	}

	FUNC37(status, 64, "at io 0x%jx irq %jd %s",
		 FUNC33(tr->reg), FUNC33(tr->irq),FUNC2(snd_t4dwave));

	if (FUNC27(dev, tr, dacn, 1))
		goto bad;
	FUNC25(dev, PCMDIR_REC, &trrchan_class, tr);
	for (i = 0; i < dacn; i++)
		FUNC25(dev, PCMDIR_PLAY, &trpchan_class, tr);
	FUNC28(dev, status);

	return 0;

bad:
	if (codec) FUNC3(codec);
	if (tr->reg) FUNC9(dev, tr->regtype, tr->regid, tr->reg);
	if (tr->ih) FUNC10(dev, tr->irq, tr->ih);
	if (tr->irq) FUNC9(dev, SYS_RES_IRQ, tr->irqid, tr->irq);
	if (tr->parent_dmat) FUNC7(tr->parent_dmat);
	if (tr->lock) FUNC35(tr->lock);
	FUNC17(tr, M_DEVBUF);
	return ENXIO;
}