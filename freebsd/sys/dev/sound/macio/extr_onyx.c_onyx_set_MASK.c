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
typedef  int /*<<< orphan*/  uint8_t ;
struct snd_mixer {int dummy; } ;
struct onyx_softc {int dummy; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCM3052_REG_LEFT_ATTN ; 
 int /*<<< orphan*/  PCM3052_REG_RIGHT_ATTN ; 
#define  SOUND_MIXER_VOLUME 128 
 struct onyx_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*) ; 
 struct mtx* FUNC2 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 int FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct onyx_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct onyx_softc *sc;
	struct mtx *mixer_lock;
	int locked;
	uint8_t l, r;

	sc = FUNC0(FUNC1(m));
	mixer_lock = FUNC2(m);
	locked = FUNC4(mixer_lock);

	switch (dev) {
	case SOUND_MIXER_VOLUME:

		/*
		 * We need to unlock the mixer lock because iicbus_transfer()
		 * may sleep. The mixer lock itself is unnecessary here
		 * because it is meant to serialize hardware access, which
		 * is taken care of by the I2C layer, so this is safe.
		 */
		if (left > 100 || right > 100)
			return (0);

		l = left + 128;
		r = right + 128;

		if (locked)
			FUNC5(mixer_lock);

		FUNC6(sc, PCM3052_REG_LEFT_ATTN, l);
		FUNC6(sc, PCM3052_REG_RIGHT_ATTN, r);

		if (locked)
			FUNC3(mixer_lock);

		return (left | (right << 8));
	}

	return (0);
}