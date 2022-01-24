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
typedef  scalar_t__ uint32_t ;
struct snddev_info {scalar_t__ pvchanformat; scalar_t__ pvchanrate; scalar_t__ rvchanformat; scalar_t__ rvchanrate; } ;
struct pcmchan_caps {int maxspeed; scalar_t__ minspeed; int /*<<< orphan*/  fmtlist; } ;
struct pcm_channel {int flags; scalar_t__ direction; scalar_t__ format; scalar_t__ speed; int /*<<< orphan*/  devinfo; int /*<<< orphan*/  methods; int /*<<< orphan*/  dev; struct snddev_info* parentsnddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFMT_PASSTHROUGH ; 
 scalar_t__ AFMT_VCHAN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int CHN_F_BUSY ; 
 int CHN_F_HAS_VCHAN ; 
 int CHN_F_VCHAN_DYNAMIC ; 
 int CHN_F_VCHAN_PASSTHROUGH ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*,struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC4 (struct pcm_channel*,struct pcm_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pcm_channel*) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ PCMDIR_PLAY ; 
 int PCMDIR_PLAY_VIRTUAL ; 
 scalar_t__ PCMDIR_REC ; 
 int PCMDIR_REC_VIRTUAL ; 
 int /*<<< orphan*/  FUNC6 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ VCHAN_DEFAULT_FORMAT ; 
 scalar_t__ VCHAN_DEFAULT_RATE ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  children ; 
 struct pcmchan_caps* FUNC12 (struct pcm_channel*) ; 
 int FUNC13 (struct pcm_channel*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ feeder_rate_max ; 
 scalar_t__ feeder_rate_min ; 
 scalar_t__ feeder_rate_round ; 
 int FUNC16 (struct snddev_info*,struct pcm_channel*) ; 
 struct pcm_channel* FUNC17 (struct snddev_info*,struct pcm_channel*,int /*<<< orphan*/ *,int,int,struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC18 (struct pcm_channel*) ; 
 scalar_t__ FUNC19 (struct snddev_info*,struct pcm_channel*) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char const*) ; 
 int /*<<< orphan*/  vchan_class ; 

int
FUNC24(struct pcm_channel *parent, int num)
{
	struct snddev_info *d;
	struct pcm_channel *ch;
	struct pcmchan_caps *parent_caps;
	uint32_t vchanfmt, vchanspd;
	int ret, direction, r, save;

	d = parent->parentsnddev;

	FUNC6(d);
	FUNC3(parent);

	if (!(parent->flags & CHN_F_BUSY))
		return (EBUSY);

	if (!(parent->direction == PCMDIR_PLAY ||
	    parent->direction == PCMDIR_REC))
		return (EINVAL);

	d = parent->parentsnddev;

	FUNC5(parent);
	FUNC7(d);

	if (parent->direction == PCMDIR_PLAY) {
		direction = PCMDIR_PLAY_VIRTUAL;
		vchanfmt = d->pvchanformat;
		vchanspd = d->pvchanrate;
	} else {
		direction = PCMDIR_REC_VIRTUAL;
		vchanfmt = d->rvchanformat;
		vchanspd = d->rvchanrate;
	}

	/* create a new playback channel */
	ch = FUNC17(d, parent, &vchan_class, direction, num, parent);
	if (ch == NULL) {
		FUNC8(d);
		FUNC2(parent);
		return (ENODEV);
	}

	/* add us to our grandparent's channel list */
	ret = FUNC16(d, ch);
	FUNC8(d);
	if (ret != 0) {
		FUNC18(ch);
		FUNC2(parent);
		return (ret);
	}

	FUNC2(parent);
	/*
	 * Add us to our parent channel's children in reverse order
	 * so future destruction will pick the last (biggest number)
	 * channel.
	 */
	FUNC1(parent, ch, children);

	if (parent->flags & CHN_F_HAS_VCHAN)
		return (0);

	parent->flags |= CHN_F_HAS_VCHAN;

	parent_caps = FUNC12(parent);
	if (parent_caps == NULL)
		ret = EINVAL;

	save = 0;

	if (ret == 0 && vchanfmt == 0) {
		const char *vfmt;

		FUNC5(parent);
		r = FUNC21(FUNC14(parent->dev),
		    FUNC15(parent->dev), FUNC10(direction),
		    &vfmt);
		FUNC2(parent);
		if (r != 0)
			vfmt = NULL;
		if (vfmt != NULL) {
			vchanfmt = FUNC23(vfmt);
			if (vchanfmt != 0 && !(vchanfmt & AFMT_VCHAN))
				vchanfmt = 0;
		}
		if (vchanfmt == 0)
			vchanfmt = VCHAN_DEFAULT_FORMAT;
		save = 1;
	}

	if (ret == 0 && vchanspd == 0) {
		/*
		 * This is very sad. Few soundcards advertised as being
		 * able to do (insanely) higher/lower speed, but in
		 * reality, they simply can't. At least, we give user chance
		 * to set sane value via kernel hints or sysctl.
		 */
		FUNC5(parent);
		r = FUNC20(FUNC14(parent->dev),
		    FUNC15(parent->dev), FUNC11(direction),
		    &vchanspd);
		FUNC2(parent);
		if (r != 0) {
			/*
			 * No saved value, no hint, NOTHING.
			 *
			 * Workaround for sb16 running
			 * poorly at 45k / 49k.
			 */
			switch (parent_caps->maxspeed) {
			case 45000:
			case 49000:
				vchanspd = 44100;
				break;
			default:
				vchanspd = VCHAN_DEFAULT_RATE;
				if (vchanspd > parent_caps->maxspeed)
					vchanspd = parent_caps->maxspeed;
				break;
			}
			if (vchanspd < parent_caps->minspeed)
				vchanspd = parent_caps->minspeed;
		}
		save = 1;
	}

	if (ret == 0) {
		/*
		 * Limit the speed between feeder_rate_min <-> feeder_rate_max.
		 */
		if (vchanspd < feeder_rate_min)
			vchanspd = feeder_rate_min;
		if (vchanspd > feeder_rate_max)
			vchanspd = feeder_rate_max;

		if (feeder_rate_round) {
			FUNC9(vchanspd, parent_caps->minspeed,
			    parent_caps->maxspeed);
			vchanspd = FUNC0(parent->methods,
			    parent->devinfo, vchanspd);
		}

		ret = FUNC13(parent, vchanfmt, vchanspd);
	}

	if (ret == 0 && save) {
		/*
		 * Save new value.
		 */
		if (direction == PCMDIR_PLAY_VIRTUAL) {
			d->pvchanformat = parent->format;
			d->pvchanrate = parent->speed;
		} else {
			d->rvchanformat = parent->format;
			d->rvchanrate = parent->speed;
		}
	}
	
	/*
	 * If the parent channel supports digital format,
	 * enable passthrough mode.
	 */
	if (ret == 0 && FUNC22(AFMT_PASSTHROUGH, parent_caps->fmtlist)) {
		parent->flags &= ~CHN_F_VCHAN_DYNAMIC;
		parent->flags |= CHN_F_VCHAN_PASSTHROUGH;
	}

	if (ret != 0) {
		FUNC4(parent, ch, children);
		parent->flags &= ~CHN_F_HAS_VCHAN;
		FUNC5(parent);
		FUNC7(d);
		if (FUNC19(d, ch) == 0) {
			FUNC8(d);
			FUNC18(ch);
		} else
			FUNC8(d);
		FUNC2(parent);
	}

	return (ret);
}