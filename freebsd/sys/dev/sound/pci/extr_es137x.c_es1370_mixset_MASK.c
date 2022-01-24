#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_mixer {int dummy; } ;
struct es_info {int /*<<< orphan*/  escfg; } ;
struct TYPE_2__ {int left; int right; scalar_t__ stereo; int /*<<< orphan*/  avail; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct es_info*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct es_info*) ; 
 unsigned int SOUND_MIXER_PCM ; 
 size_t SOUND_MIXER_SYNTH ; 
 int /*<<< orphan*/  FUNC4 (struct es_info*,int,int) ; 
 struct es_info* FUNC5 (struct snd_mixer*) ; 
 TYPE_1__* mixtable ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct es_info *es;
	int l, r, rl, rr, set_dac1;

	if (!mixtable[dev].avail)
		return (-1);
	l = left;
	r = (mixtable[dev].stereo) ? right : l;
	if (mixtable[dev].left == 0xf)
		rl = (l < 2) ? 0x80 : 7 - (l - 2) / 14;
	else
		rl = (l < 7) ? 0x80 : 31 - (l - 7) / 3;
	es = FUNC5(m);
	FUNC1(es);
	if (dev == SOUND_MIXER_PCM && (FUNC2(es->escfg)) &&
	    FUNC0(es->escfg))
		set_dac1 = 1;
	else
		set_dac1 = 0;
	if (mixtable[dev].stereo) {
		rr = (r < 7) ? 0x80 : 31 - (r - 7) / 3;
		FUNC4(es, mixtable[dev].right, rr);
		if (set_dac1 && mixtable[SOUND_MIXER_SYNTH].stereo)
			FUNC4(es,
			    mixtable[SOUND_MIXER_SYNTH].right, rr);
	}
	FUNC4(es, mixtable[dev].left, rl);
	if (set_dac1)
		FUNC4(es, mixtable[SOUND_MIXER_SYNTH].left, rl);
	FUNC3(es);

	return (l | (r << 8));
}