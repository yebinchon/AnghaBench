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
typedef  int u_int32_t ;
struct snd_mixer {int dummy; } ;
struct TYPE_2__ {scalar_t__ avail; scalar_t__ recdev; } ;

/* Variables and functions */
 int SOUND_MIXER_NRDEVICES ; 
 TYPE_1__** cs4231_mix_table ; 
 int /*<<< orphan*/  FUNC0 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m)
{
	u_int32_t v;
	int i;

	v = 0;
	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
		if (cs4231_mix_table[i][0].avail != 0)
			v |= (1 << i);
	FUNC0(m, v);
	v = 0;
	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++)
		if (cs4231_mix_table[i][0].recdev != 0)
			v |= (1 << i);
	FUNC1(m, v);
	return (0);
}