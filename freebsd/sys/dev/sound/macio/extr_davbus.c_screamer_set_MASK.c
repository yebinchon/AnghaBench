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
struct snd_mixer {int dummy; } ;
struct davbus_softc {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR2 ; 
 int /*<<< orphan*/  SCREAMER_CODEC_ADDR4 ; 
#define  SOUND_MIXER_VOLUME 128 
 struct davbus_softc* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct davbus_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct davbus_softc *d;
	int lval, rval;

	lval = ((100 - left) * 15 / 100) & 0xf;
	rval = ((100 - right) * 15 / 100) & 0xf;
	FUNC0(("volume %d %d\n", lval, rval));

	d = FUNC1(m);

	switch (dev) {
	case SOUND_MIXER_VOLUME:
		FUNC2(&d->mutex);
		FUNC4(d, SCREAMER_CODEC_ADDR2, (lval << 6) |
		    rval);
		FUNC4(d, SCREAMER_CODEC_ADDR4, (lval << 6) | 
		    rval);
		FUNC3(&d->mutex);

		return (left | (right << 8));
	}

	return (0);
}