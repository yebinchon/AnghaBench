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
typedef  int u_int ;
struct snddev_info {int flags; } ;
struct snd_mixer {int devs; int* realdev; int* parent; int* child; int* level; int /*<<< orphan*/  modify_counter; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct snd_mixer*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int) ; 
 int SD_F_EQ ; 
 int SD_F_MPSAFE ; 
 int SD_F_SOFTPCMVOL ; 
 int SOUND_MIXER_BASS ; 
 int SOUND_MIXER_NONE ; 
 int SOUND_MIXER_NRDEVICES ; 
 int SOUND_MIXER_PCM ; 
 int SOUND_MIXER_TREBLE ; 
 struct snddev_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_mixer*,struct snddev_info*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mixer*,struct snddev_info*,int,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct snd_mixer *m, u_int dev, u_int lev)
{
	struct snddev_info *d;
	u_int l, r, tl, tr;
	u_int32_t parent = SOUND_MIXER_NONE, child = 0;
	u_int32_t realdev;
	int i, dropmtx;

	if (m == NULL || dev >= SOUND_MIXER_NRDEVICES ||
	    (0 == (m->devs & (1 << dev))))
		return -1;

	l = FUNC4((lev & 0x00ff), 100);
	r = FUNC4(((lev & 0xff00) >> 8), 100);
	realdev = m->realdev[dev];

	d = FUNC3(m->dev);
	if (d == NULL)
		return -1;

	/* It is safe to drop this mutex due to Giant. */
	if (!(d->flags & SD_F_MPSAFE) && FUNC7(m->lock) != 0)
		dropmtx = 1;
	else
		dropmtx = 0;

	FUNC2(m, dropmtx);

	/* TODO: recursive handling */
	parent = m->parent[dev];
	if (parent >= SOUND_MIXER_NRDEVICES)
		parent = SOUND_MIXER_NONE;
	if (parent == SOUND_MIXER_NONE)
		child = m->child[dev];

	if (parent != SOUND_MIXER_NONE) {
		tl = (l * (m->level[parent] & 0x00ff)) / 100;
		tr = (r * ((m->level[parent] & 0xff00) >> 8)) / 100;
		if (dev == SOUND_MIXER_PCM && (d->flags & SD_F_SOFTPCMVOL))
			(void)FUNC6(m, d, tl, tr);
		else if (realdev != SOUND_MIXER_NONE &&
		    FUNC0(m, realdev, tl, tr) < 0) {
			FUNC1(m, dropmtx);
			return -1;
		}
	} else if (child != 0) {
		for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
			if (!(child & (1 << i)) || m->parent[i] != dev)
				continue;
			realdev = m->realdev[i];
			tl = (l * (m->level[i] & 0x00ff)) / 100;
			tr = (r * ((m->level[i] & 0xff00) >> 8)) / 100;
			if (i == SOUND_MIXER_PCM &&
			    (d->flags & SD_F_SOFTPCMVOL))
				(void)FUNC6(m, d, tl, tr);
			else if (realdev != SOUND_MIXER_NONE)
				FUNC0(m, realdev, tl, tr);
		}
		realdev = m->realdev[dev];
		if (realdev != SOUND_MIXER_NONE &&
		    FUNC0(m, realdev, l, r) < 0) {
				FUNC1(m, dropmtx);
				return -1;
		}
	} else {
		if (dev == SOUND_MIXER_PCM && (d->flags & SD_F_SOFTPCMVOL))
			(void)FUNC6(m, d, l, r);
		else if ((dev == SOUND_MIXER_TREBLE ||
		    dev == SOUND_MIXER_BASS) && (d->flags & SD_F_EQ))
			(void)FUNC5(m, d, dev, (l + r) >> 1);
		else if (realdev != SOUND_MIXER_NONE &&
		    FUNC0(m, realdev, l, r) < 0) {
			FUNC1(m, dropmtx);
			return -1;
		}
	}

	FUNC1(m, dropmtx);

	m->level[dev] = l | (r << 8);
	m->modify_counter++;

	return 0;
}