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
struct mss_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  OPL3SAx_VOLUMEL ; 
 int /*<<< orphan*/  OPL3SAx_VOLUMER ; 
 int SOUND_MASK_BASS ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_TREBLE ; 
 int SOUND_MASK_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (struct mss_info*,int /*<<< orphan*/ ,int) ; 
 struct mss_info* FUNC1 (struct snd_mixer*) ; 
 int FUNC2 (struct snd_mixer*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct mss_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_mixer*) ; 

__attribute__((used)) static int
FUNC7(struct snd_mixer *m)
{
	struct mss_info *mss = FUNC1(m);

	FUNC6(m);
	FUNC3(m, FUNC2(m) | SOUND_MASK_VOLUME | SOUND_MASK_MIC
				      | SOUND_MASK_BASS | SOUND_MASK_TREBLE);
	/* Set master volume */
	FUNC4(mss);
	FUNC0(mss, OPL3SAx_VOLUMEL, 7);
	FUNC0(mss, OPL3SAx_VOLUMER, 7);
	FUNC5(mss);

	return 0;
}