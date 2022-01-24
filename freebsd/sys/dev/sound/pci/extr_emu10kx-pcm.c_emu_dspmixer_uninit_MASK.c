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
struct emu_pcm_info {int /*<<< orphan*/ * sm; } ;

/* Variables and functions */
 struct emu_pcm_info* FUNC0 (struct snd_mixer*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m)
{
	struct emu_pcm_info	*sc;
	int err = 0;

	/* drop submixer for AC97 codec */
	sc = FUNC0(m);
	if (sc->sm != NULL)
		err = FUNC1(sc->sm);
		if (err)
			return (err);
		sc->sm = NULL;
	return (0);
}