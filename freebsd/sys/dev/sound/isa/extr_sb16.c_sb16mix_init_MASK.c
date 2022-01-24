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
 int SOUND_MASK_BASS ; 
 int SOUND_MASK_CD ; 
 int SOUND_MASK_IGAIN ; 
 int SOUND_MASK_LINE ; 
 int SOUND_MASK_LINE1 ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_OGAIN ; 
 int SOUND_MASK_PCM ; 
 int SOUND_MASK_SPEAKER ; 
 int SOUND_MASK_SYNTH ; 
 int SOUND_MASK_TREBLE ; 
 int SOUND_MASK_VOLUME ; 
 struct sb_info* FUNC0 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sb_info*,int,int) ; 

__attribute__((used)) static int
FUNC4(struct snd_mixer *m)
{
    	struct sb_info *sb = FUNC0(m);

	FUNC1(m, SOUND_MASK_SYNTH | SOUND_MASK_PCM | SOUND_MASK_SPEAKER |
     		       SOUND_MASK_LINE | SOUND_MASK_MIC | SOUND_MASK_CD |
     		       SOUND_MASK_IGAIN | SOUND_MASK_OGAIN | SOUND_MASK_LINE1 |
     		       SOUND_MASK_VOLUME | SOUND_MASK_BASS | SOUND_MASK_TREBLE);

	FUNC2(m, SOUND_MASK_SYNTH | SOUND_MASK_LINE |
			  SOUND_MASK_LINE1 | SOUND_MASK_MIC | SOUND_MASK_CD);

	FUNC3(sb, 0x3c, 0x1f); /* make all output active */

	FUNC3(sb, 0x3d, 0); /* make all inputs-l off */
	FUNC3(sb, 0x3e, 0); /* make all inputs-r off */

	return 0;
}