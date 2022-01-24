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
typedef  int uint32_t ;
struct snd_mixer {int dummy; } ;
struct es_info {int /*<<< orphan*/  escfg; } ;
struct TYPE_2__ {scalar_t__ recmask; scalar_t__ avail; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int SOUND_MIXER_NRDEVICES ; 
 int SOUND_MIXER_SYNTH ; 
 struct es_info* FUNC1 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int) ; 
 TYPE_1__* mixtable ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
	struct es_info *es;
	int i;
	uint32_t v;

	es = FUNC1(m);
	v = 0;
	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		if (mixtable[i].avail)
			v |= (1 << i);
	}
	/*
	 * Each DAC1/2 for ES1370 can be controlled independently
	 *   DAC1 = controlled by synth
	 *   DAC2 = controlled by pcm
	 * This is indeed can confuse user if DAC1 become primary playback
	 * channel. Try to be smart and combine both if necessary.
	 */
	if (FUNC0(es->escfg))
		v &= ~(1 << SOUND_MIXER_SYNTH);
	FUNC2(m, v);
	v = 0;
	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		if (mixtable[i].recmask)
			v |= (1 << i);
	}
	if (FUNC0(es->escfg)) /* ditto */
		v &= ~(1 << SOUND_MIXER_SYNTH);
	FUNC3(m, v);
	return (0);
}