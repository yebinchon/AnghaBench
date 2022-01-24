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
typedef  int u_int16_t ;
struct snddev_info {int flags; struct cdev* mixer_dev; scalar_t__ eqpreamp; } ;
struct snd_mixer {int devs; int* realdev; int* parent; int* child; } ;
struct cdev {struct snd_mixer* si_drv1; } ;
typedef  int /*<<< orphan*/  kobj_class_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GID_WHEEL ; 
 int /*<<< orphan*/  MIXER_TYPE_PRIMARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SD_F_EQ ; 
 int SD_F_EQ_DEFAULT ; 
 int SD_F_EQ_MASK ; 
 int SD_F_SOFTPCMVOL ; 
 int /*<<< orphan*/  SND_DEV_CTL ; 
 int SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/  UID_ROOT ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct snddev_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 struct cdev* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  mixer_cdevsw ; 
 int /*<<< orphan*/  mixer_count ; 
 struct snd_mixer* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_mixer*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,char*,int*) ; 
 int* snd_mixerdefaults ; 
 char** snd_mixernames ; 
 int FUNC11 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC12(device_t dev, kobj_class_t cls, void *devinfo)
{
	struct snddev_info *snddev;
	struct snd_mixer *m;
	u_int16_t v;
	struct cdev *pdev;
	int i, unit, devunit, val;

	snddev = FUNC2(dev);
	if (snddev == NULL)
		return (-1);

	if (FUNC10(FUNC1(dev),
	    FUNC3(dev), "eq", &val) == 0 && val != 0) {
		snddev->flags |= SD_F_EQ;
		if ((val & SD_F_EQ_MASK) == val)
			snddev->flags |= val;
		else
			snddev->flags |= SD_F_EQ_DEFAULT;
		snddev->eqpreamp = 0;
	}

	m = FUNC6(dev, cls, devinfo, MIXER_TYPE_PRIMARY, NULL);
	if (m == NULL)
		return (-1);

	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		v = snd_mixerdefaults[i];

		if (FUNC10(FUNC1(dev),
		    FUNC3(dev), snd_mixernames[i], &val) == 0) {
			if (val >= 0 && val <= 100) {
				v = (u_int16_t) val;
			}
		}

		FUNC7(m, i, v | (v << 8));
	}

	FUNC8(m, 0); /* Set default input. */

	unit = FUNC3(dev);
	devunit = FUNC11(unit, SND_DEV_CTL, 0);
	pdev = FUNC5(&mixer_cdevsw, FUNC0(devunit),
		 UID_ROOT, GID_WHEEL, 0666, "mixer%d", unit);
	pdev->si_drv1 = m;
	snddev->mixer_dev = pdev;

	++mixer_count;

	if (bootverbose) {
		for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
			if (!(m->devs & (1 << i)))
				continue;
			if (m->realdev[i] != i) {
				FUNC4(dev, "Mixer \"%s\" -> \"%s\":",
				    snd_mixernames[i],
				    (m->realdev[i] < SOUND_MIXER_NRDEVICES) ?
				    snd_mixernames[m->realdev[i]] : "none");
			} else {
				FUNC4(dev, "Mixer \"%s\":",
				    snd_mixernames[i]);
			}
			if (m->parent[i] < SOUND_MIXER_NRDEVICES)
				FUNC9(" parent=\"%s\"",
				    snd_mixernames[m->parent[i]]);
			if (m->child[i] != 0)
				FUNC9(" child=0x%08x", m->child[i]);
			FUNC9("\n");
		}
		if (snddev->flags & SD_F_SOFTPCMVOL)
			FUNC4(dev, "Soft PCM mixer ENABLED\n");
		if (snddev->flags & SD_F_EQ)
			FUNC4(dev, "EQ Treble/Bass ENABLED\n");
	}

	return (0);
}