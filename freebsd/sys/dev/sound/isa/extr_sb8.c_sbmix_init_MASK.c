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
struct sb_info {int dummy; } ;

/* Variables and functions */
 int SOUND_MASK_CD ; 
 int SOUND_MASK_PCM ; 
 int SOUND_MASK_SYNTH ; 
 int SOUND_MASK_VOLUME ; 
 struct sb_info* FUNC0 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
    	struct sb_info *sb = FUNC0(m);

	FUNC1(m, SOUND_MASK_SYNTH | SOUND_MASK_PCM | SOUND_MASK_CD | SOUND_MASK_VOLUME);

	FUNC2(m, 0);

	FUNC3(sb, 0, 1); /* reset mixer */

    	return 0;
}