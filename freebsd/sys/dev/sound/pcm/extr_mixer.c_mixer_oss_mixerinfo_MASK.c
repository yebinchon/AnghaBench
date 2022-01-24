#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snddev_info {struct cdev* mixer_dev; } ;
struct snd_mixer {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  modify_counter; int /*<<< orphan*/  name; } ;
struct cdev {struct snd_mixer* si_drv1; int /*<<< orphan*/ * si_devsw; } ;
struct TYPE_3__ {int dev; int card_number; int enabled; scalar_t__ port_number; int /*<<< orphan*/  modify_counter; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ oss_mixerinfo ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct snddev_info*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct snddev_info* FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mixer_cdevsw ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pcm_devclass ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC12(struct cdev *i_dev, oss_mixerinfo *mi)
{
	struct snddev_info *d;
	struct snd_mixer *m;
	int nmix, i;

	/*
	 * If probing the device handling the ioctl, make sure it's a mixer
	 * device.  (This ioctl is valid on audio, mixer, and midi devices.)
	 */
	if (mi->dev == -1 && i_dev->si_devsw != &mixer_cdevsw)
		return (EINVAL);

	d = NULL;
	m = NULL;
	nmix = 0;

	/*
	 * There's a 1:1 relationship between mixers and PCM devices, so
	 * begin by iterating over PCM devices and search for our mixer.
	 */
	for (i = 0; pcm_devclass != NULL &&
	    i < FUNC5(pcm_devclass); i++) {
		d = FUNC6(pcm_devclass, i);
		if (!FUNC1(d))
			continue;

		/* XXX Need Giant magic entry */

		/* See the note in function docblock. */
		FUNC3(d);
		FUNC0(d);

		if (d->mixer_dev != NULL && d->mixer_dev->si_drv1 != NULL &&
		    ((mi->dev == -1 && d->mixer_dev == i_dev) ||
		    mi->dev == nmix)) {
			m = d->mixer_dev->si_drv1;
			FUNC8(m->lock);

			/*
			 * At this point, the following synchronization stuff
			 * has happened:
			 * - a specific PCM device is locked.
			 * - a specific mixer device has been locked, so be
			 *   sure to unlock when existing.
			 */
			FUNC4((void *)mi, sizeof(*mi));
			mi->dev = nmix;
			FUNC10(mi->id, sizeof(mi->id), "mixer%d", i);
			FUNC11(mi->name, m->name, sizeof(mi->name));
			mi->modify_counter = m->modify_counter;
			mi->card_number = i;
			/*
			 * Currently, FreeBSD assumes 1:1 relationship between
			 * a pcm and mixer devices, so this is hardcoded to 0.
			 */
			mi->port_number = 0;

			/**
			 * @todo Fill in @sa oss_mixerinfo::mixerhandle.
			 * @note From 4Front:  "mixerhandle is an arbitrary
			 *       string that identifies the mixer better than
			 *       the device number (mixerinfo.dev).  Device
			 *       numbers may change depending on the order the
			 *       drivers are loaded. However the handle should
			 *       remain the same provided that the sound card
			 *       is not moved to another PCI slot."
			 */

			/**
			 * @note
			 * @sa oss_mixerinfo::magic is a reserved field.
			 * 
			 * @par
			 * From 4Front:  "magic is usually 0. However some
			 * devices may have dedicated setup utilities and the
			 * magic field may contain an unique driver specific
			 * value (managed by [4Front])."
			 */

			mi->enabled = FUNC7(m->dev) ? 1 : 0;
			/**
			 * The only flag for @sa oss_mixerinfo::caps is
			 * currently MIXER_CAP_VIRTUAL, which I'm not sure we
			 * really worry about.
			 */
			/**
			 * Mixer extensions currently aren't supported, so
			 * leave @sa oss_mixerinfo::nrext blank for now.
			 */
			/**
			 * @todo Fill in @sa oss_mixerinfo::priority (requires
			 *       touching drivers?)
			 * @note The priority field is for mixer applets to
			 * determine which mixer should be the default, with 0
			 * being least preferred and 10 being most preferred.
			 * From 4Front:  "OSS drivers like ICH use higher
			 * values (10) because such chips are known to be used
			 * only on motherboards.  Drivers for high end pro
			 * devices use 0 because they will never be the
			 * default mixer. Other devices use values 1 to 9
			 * depending on the estimated probability of being the
			 * default device.
			 *
			 * XXX Described by Hannu@4Front, but not found in
			 *     soundcard.h.
			strlcpy(mi->devnode, devtoname(d->mixer_dev),
			sizeof(mi->devnode));
			mi->legacy_device = i;
			 */
			FUNC9(m->lock);
		} else
			++nmix;

		FUNC2(d);

		if (m != NULL)
			return (0);
	}

	return (EINVAL);
}