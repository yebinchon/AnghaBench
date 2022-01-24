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
struct sb_info {uintptr_t bd_id; uintptr_t bd_flags; int /*<<< orphan*/  bufsize; int /*<<< orphan*/  drq; int /*<<< orphan*/  irq; int /*<<< orphan*/  io_base; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  ih; int /*<<< orphan*/  parent_dev; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,uintptr_t*) ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_24BIT ; 
 int ENXIO ; 
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SB_DEFAULT_BUFSZ ; 
 int SD_F_SIMPLEX ; 
 int SND_STATUSLEN ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  busdma_lock_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 struct sb_info* FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,struct sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sb_intr ; 
 int /*<<< orphan*/  FUNC16 (struct sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (struct sb_info*) ; 
 int /*<<< orphan*/  sbchan_class ; 
 int /*<<< orphan*/  sbmix_mixer_class ; 
 int /*<<< orphan*/  sbpromix_mixer_class ; 
 int /*<<< orphan*/  snd_sb8 ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (char*,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC20(device_t dev)
{
    	struct sb_info *sb;
    	char status[SND_STATUSLEN];
	uintptr_t ver;

    	sb = FUNC6(sizeof(*sb), M_DEVBUF, M_WAITOK | M_ZERO);
	sb->parent_dev = FUNC4(dev);
	FUNC0(FUNC4(dev), dev, 1, &ver);
	sb->bd_id = ver & 0x0000ffff;
	sb->bd_flags = (ver & 0xffff0000) >> 16;
	sb->bufsize = FUNC9(dev, 4096, SB_DEFAULT_BUFSZ, 65536);

    	if (FUNC15(sb, dev))
		goto no;
    	if (FUNC17(sb))
		goto no;
    	if (FUNC7(dev, (sb->bd_id < 0x300)? &sbmix_mixer_class : &sbpromix_mixer_class, sb))
		goto no;
	if (FUNC18(dev, sb->irq, 0, sb_intr, sb, &sb->ih))
		goto no;

	FUNC12(dev, FUNC10(dev) | SD_F_SIMPLEX);

    	if (FUNC2(/*parent*/FUNC3(dev), /*alignment*/2,
			/*boundary*/0,
			/*lowaddr*/BUS_SPACE_MAXADDR_24BIT,
			/*highaddr*/BUS_SPACE_MAXADDR,
			/*filter*/NULL, /*filterarg*/NULL,
			/*maxsize*/sb->bufsize, /*nsegments*/1,
			/*maxsegz*/0x3ffff, /*flags*/0,
			/*lockfunc*/busdma_lock_mutex, /*lockarg*/&Giant,
			&sb->parent_dmat) != 0) {
		FUNC5(dev, "unable to create dma tag\n");
		goto no;
    	}

    	FUNC19(status, SND_STATUSLEN, "at io 0x%jx irq %jd drq %jd bufsz %u %s",
    	     	FUNC14(sb->io_base), FUNC14(sb->irq),
		FUNC14(sb->drq), sb->bufsize, FUNC1(snd_sb8));

    	if (FUNC11(dev, sb, 1, 1))
		goto no;
	FUNC8(dev, PCMDIR_REC, &sbchan_class, sb);
	FUNC8(dev, PCMDIR_PLAY, &sbchan_class, sb);

    	FUNC13(dev, status);

    	return 0;

no:
    	FUNC16(sb, dev);
    	return ENXIO;
}