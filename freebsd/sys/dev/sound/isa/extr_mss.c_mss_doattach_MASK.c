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
struct mss_info {int bd_id; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  irq; int /*<<< orphan*/  io_base; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  ih; int /*<<< orphan*/  drq2; int /*<<< orphan*/  drq1; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int DV_F_TRUE_MSS ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
#define  MD_OPTI931 128 
 int MD_YM0020 ; 
 int /*<<< orphan*/  MSS_DEFAULT_BUFSZ ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int SD_F_SIMPLEX ; 
 int SND_STATUSLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (struct mss_info*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mss_info*,int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mss_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mss_intr ; 
 int /*<<< orphan*/  FUNC10 (struct mss_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msschan_class ; 
 int /*<<< orphan*/  mssmix_mixer_class ; 
 int /*<<< orphan*/  opti931_intr ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mss_info*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct mss_info*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (char*,int,...) ; 
 size_t FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mss_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,size_t,...) ; 
 int /*<<< orphan*/  ymmix_mixer_class ; 

__attribute__((used)) static int
FUNC22(device_t dev, struct mss_info *mss)
{
    	int pdma, rdma, flags = FUNC2(dev);
    	char status[SND_STATUSLEN], status2[SND_STATUSLEN];

	mss->lock = FUNC19(FUNC3(dev), "snd_mss softc");
	mss->bufsize = FUNC12(dev, 4096, MSS_DEFAULT_BUFSZ, 65536);
    	if (!FUNC8(mss, dev)) goto no;
    	FUNC9(mss, dev);
	pdma = FUNC18(mss->drq1);
	rdma = FUNC18(mss->drq2);
    	if (flags & DV_F_TRUE_MSS) {
		/* has IRQ/DMA registers, set IRQ and DMA addr */
		static char     interrupt_bits[12] =
	    	{-1, -1, -1, -1, -1, 0x28, -1, 0x08, -1, 0x10, 0x18, 0x20};
		static char     pdma_bits[4] =  {1, 2, -1, 3};
		static char	valid_rdma[4] = {1, 0, -1, 0};
		char		bits;

		if (!mss->irq || (bits = interrupt_bits[FUNC18(mss->irq)]) == -1)
			goto no;
		FUNC6(mss, 0, bits | 0x40);	/* config port */
		if ((FUNC5(mss, 3) & 0x40) == 0) FUNC4(dev, "IRQ Conflict?\n");
		/* Write IRQ+DMA setup */
		if (pdma_bits[pdma] == -1) goto no;
		bits |= pdma_bits[pdma];
		if (pdma != rdma) {
	    		if (rdma == valid_rdma[pdma]) bits |= 4;
	    		else {
				FUNC17("invalid dual dma config %d:%d\n", pdma, rdma);
				goto no;
	    		}
		}
		FUNC6(mss, 0, bits);
		FUNC17("drq/irq conf %x\n", FUNC5(mss, 0));
    	}
    	FUNC7(dev, (mss->bd_id == MD_YM0020)? &ymmix_mixer_class : &mssmix_mixer_class, mss);
    	switch (mss->bd_id) {
    	case MD_OPTI931:
		FUNC20(dev, mss->irq, 0, opti931_intr, mss, &mss->ih);
		break;
    	default:
		FUNC20(dev, mss->irq, 0, mss_intr, mss, &mss->ih);
    	}
    	if (pdma == rdma)
		FUNC15(dev, FUNC13(dev) | SD_F_SIMPLEX);
    	if (FUNC0(/*parent*/FUNC1(dev), /*alignment*/2,
			/*boundary*/0,
			/*lowaddr*/BUS_SPACE_MAXADDR_24BIT,
			/*highaddr*/BUS_SPACE_MAXADDR,
			/*filter*/NULL, /*filterarg*/NULL,
			/*maxsize*/mss->bufsize, /*nsegments*/1,
			/*maxsegz*/0x3ffff, /*flags*/0,
			/*lockfunc*/busdma_lock_mutex, /*lockarg*/&Giant,
			&mss->parent_dmat) != 0) {
		FUNC4(dev, "unable to create dma tag\n");
		goto no;
    	}

    	if (pdma != rdma)
		FUNC21(status2, SND_STATUSLEN, ":%d", rdma);
	else
		status2[0] = '\0';

    	FUNC21(status, SND_STATUSLEN, "at io 0x%jx irq %jd drq %d%s bufsz %u",
    	     	FUNC18(mss->io_base), FUNC18(mss->irq), pdma, status2, mss->bufsize);

    	if (FUNC14(dev, mss, 1, 1)) goto no;
    	FUNC11(dev, PCMDIR_REC, &msschan_class, mss);
    	FUNC11(dev, PCMDIR_PLAY, &msschan_class, mss);
    	FUNC16(dev, status);

    	return 0;
no:
    	FUNC10(mss, dev);
    	return ENXIO;
}