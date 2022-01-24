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
struct fm801_info {scalar_t__ regtype; scalar_t__ parent_dmat; void* irq; scalar_t__ irqid; scalar_t__ ih; void* reg; scalar_t__ regid; int /*<<< orphan*/  radio; int /*<<< orphan*/  bufsz; int /*<<< orphan*/  sh; int /*<<< orphan*/  st; int /*<<< orphan*/  type; } ;
struct ac97_info {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ac97_info* FUNC0 (int /*<<< orphan*/ ,struct fm801_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FM801_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  FM801_MAXPLAYCH ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ FUNC1 (int) ; 
 int PCI_MAXMAPS_0 ; 
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
 void* FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  fm801_ac97 ; 
 int /*<<< orphan*/  FUNC14 (struct fm801_info*) ; 
 int /*<<< orphan*/  fm801_intr ; 
 int /*<<< orphan*/  fm801ch_class ; 
 int /*<<< orphan*/  FUNC15 (struct fm801_info*,int /*<<< orphan*/ ) ; 
 struct fm801_info* FUNC16 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ac97_info*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct fm801_info*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,struct fm801_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC24 (void*) ; 
 int /*<<< orphan*/  FUNC25 (void*) ; 
 int /*<<< orphan*/  FUNC26 (void*) ; 
 int /*<<< orphan*/  snd_fm801 ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fm801_info*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC28 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC29(device_t dev)
{
	struct ac97_info 	*codec = NULL;
	struct fm801_info 	*fm801;
	int 			i;
	int 			mapped = 0;
	char 			status[SND_STATUSLEN];

	fm801 = FUNC16(sizeof(*fm801), M_DEVBUF, M_WAITOK | M_ZERO);
	fm801->type = FUNC19(dev);

	FUNC18(dev);

	for (i = 0; (mapped == 0) && (i < PCI_MAXMAPS_0); i++) {
		fm801->regid = FUNC1(i);
		fm801->regtype = SYS_RES_MEMORY;
		fm801->reg = FUNC5(dev, fm801->regtype,
						    &fm801->regid, RF_ACTIVE);
		if(!fm801->reg)
		{
			fm801->regtype = SYS_RES_IOPORT;
			fm801->reg = FUNC5(dev, 
							    fm801->regtype,
							    &fm801->regid,
							    RF_ACTIVE);
		}

		if(fm801->reg) {
			fm801->st = FUNC25(fm801->reg);
			fm801->sh = FUNC24(fm801->reg);
			mapped++;
		}
	}

	if (mapped == 0) {
		FUNC13(dev, "unable to map register space\n");
		goto oops;
	}

	fm801->bufsz = FUNC21(dev, 4096, FM801_DEFAULT_BUFSZ, 65536);

	FUNC14(fm801);

	codec = FUNC0(dev, fm801, fm801_ac97);
	if (codec == NULL) goto oops;

	if (FUNC17(dev, FUNC4(), codec) == -1) goto oops;

	fm801->irqid = 0;
	fm801->irq = FUNC5(dev, SYS_RES_IRQ, &fm801->irqid,
					    RF_ACTIVE | RF_SHAREABLE);
	if (!fm801->irq ||
	    FUNC27(dev, fm801->irq, 0, fm801_intr, fm801, &fm801->ih)) {
		FUNC13(dev, "unable to map interrupt\n");
		goto oops;
	}

	if (FUNC6(/*parent*/FUNC9(dev), /*alignment*/2,
		/*boundary*/0,
		/*lowaddr*/BUS_SPACE_MAXADDR_32BIT,
		/*highaddr*/BUS_SPACE_MAXADDR,
		/*filter*/NULL, /*filterarg*/NULL,
		/*maxsize*/fm801->bufsz, /*nsegments*/1, /*maxsegz*/0x3ffff,
		/*flags*/0, /*lockfunc*/busdma_lock_mutex,
		/*lockarg*/&Giant, &fm801->parent_dmat) != 0) {
		FUNC13(dev, "unable to create dma tag\n");
		goto oops;
	}

	FUNC28(status, 64, "at %s 0x%jx irq %jd %s",
		(fm801->regtype == SYS_RES_IOPORT)? "io" : "memory",
		FUNC26(fm801->reg), FUNC26(fm801->irq),FUNC2(snd_fm801));

#define FM801_MAXPLAYCH	1
	if (FUNC22(dev, fm801, FM801_MAXPLAYCH, 1)) goto oops;
	FUNC20(dev, PCMDIR_PLAY, &fm801ch_class, fm801);
	FUNC20(dev, PCMDIR_REC, &fm801ch_class, fm801);
	FUNC23(dev, status);

	fm801->radio = FUNC12(dev, "radio", -1);
	FUNC8(dev);

	return 0;

oops:
	if (codec) FUNC3(codec);
	if (fm801->reg) FUNC10(dev, fm801->regtype, fm801->regid, fm801->reg);
	if (fm801->ih) FUNC11(dev, fm801->irq, fm801->ih);
	if (fm801->irq) FUNC10(dev, SYS_RES_IRQ, fm801->irqid, fm801->irq);
	if (fm801->parent_dmat) FUNC7(fm801->parent_dmat);
	FUNC15(fm801, M_DEVBUF);
	return ENXIO;
}