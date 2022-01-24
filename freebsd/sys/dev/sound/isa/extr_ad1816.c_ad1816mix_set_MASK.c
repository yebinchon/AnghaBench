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
typedef  int u_short ;
struct snd_mixer {int dummy; } ;
struct ad1816_info {int dummy; } ;

/* Variables and functions */
 unsigned int AD1816_MUTE ; 
#define  SOUND_MIXER_CD 136 
#define  SOUND_MIXER_IGAIN 135 
#define  SOUND_MIXER_LINE 134 
#define  SOUND_MIXER_LINE1 133 
#define  SOUND_MIXER_LINE3 132 
#define  SOUND_MIXER_MIC 131 
#define  SOUND_MIXER_PCM 130 
#define  SOUND_MIXER_SYNTH 129 
#define  SOUND_MIXER_VOLUME 128 
 int /*<<< orphan*/  FUNC0 (struct ad1816_info*) ; 
 int FUNC1 (struct ad1816_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ad1816_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ad1816_info*,int,int) ; 
 struct ad1816_info* FUNC4 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *m, unsigned dev, unsigned left, unsigned right)
{
	struct ad1816_info *ad1816 = FUNC4(m);
    	u_short reg = 0;

    	/* Scale volumes */
    	left = AD1816_MUTE - (AD1816_MUTE * left) / 100;
    	right = AD1816_MUTE - (AD1816_MUTE * right) / 100;

    	reg = (left << 8) | right;

    	/* do channel selective muting if volume is zero */
    	if (left == AD1816_MUTE)	reg |= 0x8000;
    	if (right == AD1816_MUTE)	reg |= 0x0080;

	FUNC0(ad1816);
    	switch (dev) {
    	case SOUND_MIXER_VOLUME:	/* Register 14 master volume */
		FUNC3(ad1816, 14, reg);
		break;

    	case SOUND_MIXER_CD:	/* Register 15 cd */
    	case SOUND_MIXER_LINE1:
		FUNC3(ad1816, 15, reg);
		break;

    	case SOUND_MIXER_SYNTH:	/* Register 16 synth */
		FUNC3(ad1816, 16, reg);
		break;

    	case SOUND_MIXER_PCM:	/* Register 4 pcm */
		FUNC3(ad1816, 4, reg);
		break;

    	case SOUND_MIXER_LINE:
    	case SOUND_MIXER_LINE3:	/* Register 18 line in */
		FUNC3(ad1816, 18, reg);
		break;

    	case SOUND_MIXER_MIC:	/* Register 19 mic volume */
		FUNC3(ad1816, 19, reg & ~0xff);	/* mic is mono */
		break;

    	case SOUND_MIXER_IGAIN:
		/* and now to something completely different ... */
		FUNC3(ad1816, 20, ((FUNC1(ad1816, 20) & ~0x0f0f)
	      	| (((AD1816_MUTE - left) / 2) << 8) /* four bits of adc gain */
	      	| ((AD1816_MUTE - right) / 2)));
		break;

    	default:
		FUNC5("ad1816_mixer_set(): unknown device.\n");
		break;
    	}
	FUNC2(ad1816);

    	left = ((AD1816_MUTE - left) * 100) / AD1816_MUTE;
    	right = ((AD1816_MUTE - right) * 100) / AD1816_MUTE;

    	return left | (right << 8);
}