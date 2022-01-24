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
struct resource {int dummy; } ;
struct au_info {int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/ * sh; int /*<<< orphan*/ * st; int /*<<< orphan*/  unit; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int nummaps; TYPE_1__* map; } ;
struct TYPE_3__ {int ln2size; int type; int base; } ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct au_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AU_BUFFSIZE ; 
 int /*<<< orphan*/  AU_REG_IRQEN ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int FUNC1 (int) ; 
 int PCI_MAPPORT ; 
 int PCI_MAXMAPS_0 ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int RF_ACTIVE ; 
 int RF_SHAREABLE ; 
 int SND_STATUSLEN ; 
 int SYS_RES_IOPORT ; 
 int SYS_RES_IRQ ; 
 int SYS_RES_MEMORY ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  au_ac97 ; 
 int FUNC4 (int /*<<< orphan*/ ,struct au_info*) ; 
 int /*<<< orphan*/  au_intr ; 
 scalar_t__ FUNC5 (struct au_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct au_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  auchan_class ; 
 scalar_t__ bootverbose ; 
 struct resource* FUNC7 (int /*<<< orphan*/ ,int,int*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct resource*,void*) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 TYPE_2__* config_id ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct au_info*,int /*<<< orphan*/ ) ; 
 struct au_info* FUNC15 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct au_info*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,struct au_info*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (struct resource*) ; 
 int /*<<< orphan*/  FUNC23 (struct resource*) ; 
 int /*<<< orphan*/  FUNC24 (struct resource*) ; 
 int /*<<< orphan*/  snd_aureal ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,struct resource*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct au_info*,void**) ; 
 int /*<<< orphan*/  FUNC26 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int unit ; 

__attribute__((used)) static int
FUNC27(device_t dev)
{
	struct au_info *au;
	int		type[10];
	int		regid[10];
	struct resource *reg[10];
	int		i, j, mapped = 0;
	int		irqid;
	struct resource *irq;
	void		*ih;
	struct ac97_info *codec;
	char 		status[SND_STATUSLEN];

	au = FUNC15(sizeof(*au), M_DEVBUF, M_WAITOK | M_ZERO);
	au->unit = FUNC12(dev);

	FUNC17(dev);

	irq = NULL;
	ih = NULL;
	j=0;
	/* XXX dfr: is this strictly necessary? */
	for (i=0; i<PCI_MAXMAPS_0; i++) {
#if 0
		/* Slapped wrist: config_id and map are private structures */
		if (bootverbose) {
			printf("pcm%d: map %d - allocating ", unit, i+1);
			printf("0x%x bytes of ", 1<<config_id->map[i].ln2size);
			printf("%s space ", (config_id->map[i].type & PCI_MAPPORT)?
					    "io" : "memory");
			printf("at 0x%x...", config_id->map[i].base);
		}
#endif
		regid[j] = FUNC1(i);
		type[j] = SYS_RES_MEMORY;
		reg[j] = FUNC7(dev, type[j], &regid[j],
						RF_ACTIVE);
		if (!reg[j]) {
			type[j] = SYS_RES_IOPORT;
			reg[j] = FUNC7(dev, type[j], 
							&regid[j], RF_ACTIVE);
		}
		if (reg[j]) {
			au->st[i] = FUNC23(reg[j]);
			au->sh[i] = FUNC22(reg[j]);
			mapped++;
		}
#if 0
		if (bootverbose) printf("%s\n", mapped? "ok" : "failed");
#endif
		if (mapped) j++;
		if (j == 10) {
			/* XXX */
			FUNC13(dev, "too many resources");
			goto bad;
		}
	}

#if 0
	if (j < config_id->nummaps) {
		printf("pcm%d: unable to map a required resource\n", unit);
		free(au, M_DEVBUF);
		return;
	}
#endif

	FUNC6(au, 0, AU_REG_IRQEN, 0, 4);

	irqid = 0;
	irq = FUNC7(dev, SYS_RES_IRQ, &irqid,
				     RF_ACTIVE | RF_SHAREABLE);
	if (!irq || FUNC25(dev, irq, 0, au_intr, au, &ih)) {
		FUNC13(dev, "unable to map interrupt\n");
		goto bad;
	}

	if (FUNC5(au)) FUNC13(dev, "irq test failed\n");

	if (FUNC4(dev, au) == -1) {
		FUNC13(dev, "unable to initialize the card\n");
		goto bad;
	}

	codec = FUNC0(dev, au, au_ac97);
	if (codec == NULL) goto bad;
	if (FUNC16(dev, FUNC3(), codec) == -1) goto bad;

	if (FUNC8(/*parent*/FUNC9(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/AU_BUFFSIZE, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant, &au->parent_dmat) != 0) {
		FUNC13(dev, "unable to create dma tag\n");
		goto bad;
	}

	FUNC26(status, SND_STATUSLEN, "at %s 0x%jx irq %jd %s",
		 (type[0] == SYS_RES_IOPORT)? "io" : "memory",
		 FUNC24(reg[0]), FUNC24(irq),FUNC2(snd_aureal));

	if (FUNC19(dev, au, 1, 1)) goto bad;
	/* pcm_addchan(dev, PCMDIR_REC, &au_chantemplate, au); */
	FUNC18(dev, PCMDIR_PLAY, &auchan_class, au);
	FUNC20(dev, status);

	return 0;

 bad:
	if (au) FUNC14(au, M_DEVBUF);
	for (i = 0; i < j; i++)
		FUNC10(dev, type[i], regid[i], reg[i]);
	if (ih) FUNC11(dev, irq, ih);
	if (irq) FUNC10(dev, SYS_RES_IRQ, irqid, irq);
	return ENXIO;
}