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
struct ac97_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ac97_info*) ; 
 struct ac97_info* FUNC1 (struct snd_mixer*) ; 

__attribute__((used)) static int
FUNC2(struct snd_mixer *m)
{
	struct ac97_info *codec = FUNC1(m);

	if (codec == NULL)
		return -1;
	/*
	if (ac97_uninitmixer(codec))
		return -1;
	*/
	FUNC0(codec);
	return 0;
}