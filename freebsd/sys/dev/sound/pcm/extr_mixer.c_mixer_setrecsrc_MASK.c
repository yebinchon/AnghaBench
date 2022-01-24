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
typedef  int u_int32_t ;
struct snddev_info {int flags; } ;
struct snd_mixer {int recdevs; int recsrc; int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_mixer*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_mixer*,int) ; 
 int SD_F_MPSAFE ; 
 int SOUND_MASK_LINE ; 
 int SOUND_MASK_MIC ; 
 int SOUND_MASK_MONITOR ; 
 struct snddev_info* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct snd_mixer *mixer, u_int32_t src)
{
	struct snddev_info *d;
	u_int32_t recsrc;
	int dropmtx;

	d = FUNC3(mixer->dev);
	if (d == NULL)
		return -1;
	if (!(d->flags & SD_F_MPSAFE) && FUNC5(mixer->lock) != 0)
		dropmtx = 1;
	else
		dropmtx = 0;
	src &= mixer->recdevs;
	if (src == 0)
		src = mixer->recdevs & SOUND_MASK_MIC;
	if (src == 0)
		src = mixer->recdevs & SOUND_MASK_MONITOR;
	if (src == 0)
		src = mixer->recdevs & SOUND_MASK_LINE;
	if (src == 0 && mixer->recdevs != 0)
		src = (1 << (FUNC4(mixer->recdevs) - 1));
	/* It is safe to drop this mutex due to Giant. */
	FUNC2(mixer, dropmtx);
	recsrc = FUNC0(mixer, src);
	FUNC1(mixer, dropmtx);

	mixer->recsrc = recsrc;

	return 0;
}