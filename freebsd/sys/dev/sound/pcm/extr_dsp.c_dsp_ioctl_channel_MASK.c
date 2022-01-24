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
typedef  int u_long ;
struct snddev_info {int dummy; } ;
struct pcm_channel {int feederflags; scalar_t__ direction; } ;
struct cdev {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int FUNC0 (struct pcm_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 int EINVAL ; 
 int FEEDER_VOLUME ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct cdev*) ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ PCMDIR_REC ; 
 struct pcm_channel* FUNC6 (struct cdev*) ; 
 int /*<<< orphan*/  FUNC7 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct snddev_info*) ; 
 struct pcm_channel* FUNC9 (struct cdev*) ; 
 struct pcm_channel* FUNC10 (struct cdev*) ; 
 int SD_F_VPC ; 
 int /*<<< orphan*/  SND_CHN_T_FL ; 
 int /*<<< orphan*/  SND_CHN_T_FR ; 
 int SND_DEV_DSPHW_PLAY ; 
 int SND_DEV_DSPHW_REC ; 
 int SND_DEV_DSPHW_VPLAY ; 
 int SND_DEV_DSPHW_VREC ; 
 int /*<<< orphan*/  SND_VOL_C_PCM ; 
 int SOUND_MASK_PCM ; 
 int SOUND_MASK_RECLEV ; 
#define  SOUND_MIXER_CAPS 132 
#define  SOUND_MIXER_DEVMASK 131 
 int SOUND_MIXER_PCM ; 
 int SOUND_MIXER_RECLEV ; 
#define  SOUND_MIXER_RECMASK 130 
#define  SOUND_MIXER_RECSRC 129 
#define  SOUND_MIXER_STEREODEVS 128 
 int /*<<< orphan*/  FUNC11 (struct pcm_channel*,int /*<<< orphan*/ ,int,int,int) ; 
 int FUNC12 (struct cdev*) ; 
 struct snddev_info* FUNC13 (struct cdev*) ; 
 int FUNC14 (struct cdev*,struct pcm_channel**) ; 

__attribute__((used)) static int
FUNC15(struct cdev *dev, struct pcm_channel *volch, u_long cmd,
    caddr_t arg)
{
	struct snddev_info *d;
	struct pcm_channel *rdch, *wrch;
	int j, devtype, ret;

	d = FUNC13(dev);
	if (!FUNC7(d) || !(FUNC12(dev) & SD_F_VPC))
		return (-1);

	FUNC8(d);

	j = cmd & 0xff;

	rdch = FUNC6(dev);
	wrch = FUNC10(dev);

	/* No specific channel, look into cache */
	if (volch == NULL)
		volch = FUNC9(dev);

	/* Look harder */
	if (volch == NULL) {
		if (j == SOUND_MIXER_RECLEV && rdch != NULL)
			volch = rdch;
		else if (j == SOUND_MIXER_PCM && wrch != NULL)
			volch = wrch;
	}

	devtype = FUNC5(dev);

	/* Look super harder */
	if (volch == NULL &&
	    (devtype == SND_DEV_DSPHW_PLAY || devtype == SND_DEV_DSPHW_VPLAY ||
	    devtype == SND_DEV_DSPHW_REC || devtype == SND_DEV_DSPHW_VREC)) {
		ret = FUNC14(dev, &volch);
		if (ret != 0)
			return (ret);
		if (volch == NULL)
			return (EINVAL);
	}

	/* Final validation */
	if (volch != NULL) {
		FUNC1(volch);
		if (!(volch->feederflags & (1 << FEEDER_VOLUME))) {
			FUNC2(volch);
			return (-1);
		}
		if (volch->direction == PCMDIR_PLAY)
			wrch = volch;
		else
			rdch = volch;
	}

	ret = EINVAL;

	if (volch != NULL &&
	    ((j == SOUND_MIXER_PCM && volch->direction == PCMDIR_PLAY) ||
	    (j == SOUND_MIXER_RECLEV && volch->direction == PCMDIR_REC))) {
		if ((cmd & ~0xff) == FUNC4(0)) {
			int left, right, center;

			left = *(int *)arg & 0x7f;
			right = ((*(int *)arg) >> 8) & 0x7f;
			center = (left + right) >> 1;
			FUNC11(volch, SND_VOL_C_PCM, left, right,
			    center);
		} else if ((cmd & ~0xff) == FUNC3(0)) {
			*(int *)arg = FUNC0(volch,
				SND_VOL_C_PCM, SND_CHN_T_FL);
			*(int *)arg |= FUNC0(volch,
				SND_VOL_C_PCM, SND_CHN_T_FR) << 8;
		}
		ret = 0;
	} else if (rdch != NULL || wrch != NULL) {
		switch (j) {
		case SOUND_MIXER_DEVMASK:
		case SOUND_MIXER_CAPS:
		case SOUND_MIXER_STEREODEVS:
			if ((cmd & ~0xff) == FUNC3(0)) {
				*(int *)arg = 0;
				if (rdch != NULL)
					*(int *)arg |= SOUND_MASK_RECLEV;
				if (wrch != NULL)
					*(int *)arg |= SOUND_MASK_PCM;
			}
			ret = 0;
			break;
		case SOUND_MIXER_RECMASK:
		case SOUND_MIXER_RECSRC:
			if ((cmd & ~0xff) == FUNC3(0))
				*(int *)arg = 0;
			ret = 0;
			break;
		default:
			break;
		}
	}

	if (volch != NULL)
		FUNC2(volch);

	return (ret);
}