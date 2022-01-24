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
 int /*<<< orphan*/  BURGUNDY_OL13_REG ; 
 int /*<<< orphan*/  BURGUNDY_OL14_REG ; 
 int /*<<< orphan*/  BURGUNDY_OL15_REG ; 
 int /*<<< orphan*/  BURGUNDY_OL16_REG ; 
 int /*<<< orphan*/  BURGUNDY_OL17_REG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SOUND_MIXER_VOLUME 128 
 int /*<<< orphan*/  FUNC1 (struct davbus_softc*,int /*<<< orphan*/ ,int) ; 
 struct davbus_softc* FUNC2 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct davbus_softc *d;
	int lval, rval;

	lval = ((100 - left) * 15 / 100) & 0xf;
	rval = ((100 - right) * 15 / 100) & 0xf;
	FUNC0(("volume %d %d\n", lval, rval));

	d = FUNC2(m);

	switch (dev) {
	case SOUND_MIXER_VOLUME:
		FUNC3(&d->mutex);

		FUNC1(d, BURGUNDY_OL13_REG, lval);
		FUNC1(d, BURGUNDY_OL14_REG, (rval << 4) | lval);
		FUNC1(d, BURGUNDY_OL15_REG, (rval << 4) | lval);
		FUNC1(d, BURGUNDY_OL16_REG, (rval << 4) | lval);
		FUNC1(d, BURGUNDY_OL17_REG, lval);

		FUNC4(&d->mutex);

		return (left | (right << 8));
	}

	return (0);
}