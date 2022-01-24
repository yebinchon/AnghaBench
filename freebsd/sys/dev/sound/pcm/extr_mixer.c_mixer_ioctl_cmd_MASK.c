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
struct thread {int dummy; } ;
struct snd_mixer {int /*<<< orphan*/  lock; int /*<<< orphan*/  enuminfo; int /*<<< orphan*/  busy; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef  int /*<<< orphan*/  oss_sysinfo ;
typedef  int /*<<< orphan*/  oss_mixerinfo ;
typedef  int /*<<< orphan*/  oss_mixer_enuminfo ;
typedef  int /*<<< orphan*/  oss_card_info ;
typedef  int /*<<< orphan*/  oss_audioinfo ;
typedef  int /*<<< orphan*/  mixer_info ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENXIO ; 
 char FUNC0 (int) ; 
 int MIXER_CMD_CDEV ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
#define  OSS_GETVERSION 143 
#define  SNDCTL_AUDIOINFO 142 
#define  SNDCTL_AUDIOINFO_EX 141 
#define  SNDCTL_CARDINFO 140 
#define  SNDCTL_DSP_GET_RECSRC 139 
#define  SNDCTL_DSP_GET_RECSRC_NAMES 138 
#define  SNDCTL_DSP_SET_RECSRC 137 
#define  SNDCTL_ENGINEINFO 136 
#define  SNDCTL_MIXERINFO 135 
#define  SNDCTL_SYSINFO 134 
#define  SOUND_MIXER_CAPS 133 
#define  SOUND_MIXER_DEVMASK 132 
#define  SOUND_MIXER_INFO 131 
#define  SOUND_MIXER_RECMASK 130 
#define  SOUND_MIXER_RECSRC 129 
#define  SOUND_MIXER_STEREODEVS 128 
 int SOUND_VERSION ; 
 int /*<<< orphan*/  FUNC3 (void*,scalar_t__,int) ; 
 int FUNC4 (struct cdev*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct snd_mixer*) ; 
 int FUNC6 (struct snd_mixer*) ; 
 int FUNC7 (struct snd_mixer*,int) ; 
 int FUNC8 (struct snd_mixer*,int*) ; 
 int FUNC9 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_mixer*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct cdev*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct snd_mixer*,int,int) ; 
 int FUNC13 (struct snd_mixer*,int) ; 
 int FUNC14 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

int
FUNC19(struct cdev *i_dev, u_long cmd, caddr_t arg, int mode,
    struct thread *td, int from)
{
	struct snd_mixer *m;
	int ret = EINVAL, *arg_i = (int *)arg;
	int v = -1, j = cmd & 0xff;

	/*
	 * Certain ioctls may be made on any type of device (audio, mixer,
	 * and MIDI).  Handle those special cases here.
	 */
	if (FUNC0(cmd) == 'X') {
		switch (cmd) {
		case SNDCTL_SYSINFO:
			FUNC18((oss_sysinfo *)arg);
			return (0);
		case SNDCTL_CARDINFO:
			return (FUNC17((oss_card_info *)arg));
	    	case SNDCTL_AUDIOINFO:
	    	case SNDCTL_AUDIOINFO_EX:
	    	case SNDCTL_ENGINEINFO:
			return (FUNC4(i_dev, (oss_audioinfo *)arg));
		case SNDCTL_MIXERINFO:
			return (FUNC11(i_dev, (oss_mixerinfo *)arg));
		}
		return (EINVAL);
	}

	m = i_dev->si_drv1;

	if (m == NULL)
		return (EBADF);

	FUNC15(m->lock);
	if (from == MIXER_CMD_CDEV && !m->busy) {
		FUNC16(m->lock);
		return (EBADF);
	}
	switch (cmd) {
	case SNDCTL_DSP_GET_RECSRC_NAMES:
		FUNC3((void *)&m->enuminfo, arg, sizeof(oss_mixer_enuminfo));
		ret = 0;
		goto done;
	case SNDCTL_DSP_GET_RECSRC:
		ret = FUNC8(m, arg_i);
		goto done;
	case SNDCTL_DSP_SET_RECSRC:
		ret = FUNC13(m, *arg_i);
		goto done;
	case OSS_GETVERSION:
		*arg_i = SOUND_VERSION;
		ret = 0;
		goto done;
	case SOUND_MIXER_INFO:
		FUNC10(m, (mixer_info *)arg);
		ret = 0;
		goto done;
	}
	if ((cmd & ~0xff) == FUNC2(0)) {
		if (j == SOUND_MIXER_RECSRC)
			ret = FUNC14(m, *arg_i);
		else
			ret = FUNC12(m, j, *arg_i);
		FUNC16(m->lock);
		return ((ret == 0) ? 0 : ENXIO);
	}
	if ((cmd & ~0xff) == FUNC1(0)) {
		switch (j) {
		case SOUND_MIXER_DEVMASK:
		case SOUND_MIXER_CAPS:
		case SOUND_MIXER_STEREODEVS:
			v = FUNC5(m);
			break;
		case SOUND_MIXER_RECMASK:
			v = FUNC6(m);
			break;
		case SOUND_MIXER_RECSRC:
			v = FUNC9(m);
			break;
		default:
			v = FUNC7(m, j);
		}
		*arg_i = v;
		FUNC16(m->lock);
		return ((v != -1) ? 0 : ENXIO);
	}
done:
	FUNC16(m->lock);
	return (ret);
}