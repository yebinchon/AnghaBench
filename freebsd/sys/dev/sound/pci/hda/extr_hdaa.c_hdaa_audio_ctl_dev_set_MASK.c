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
struct hdaa_audio_ctl {int* devleft; int* devright; int* devmute; } ;

/* Variables and functions */
 int FUNC0 (struct hdaa_audio_ctl*,int) ; 
 int SOUND_MIXER_NRDEVICES ; 
 scalar_t__ FUNC1 (struct hdaa_audio_ctl*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hdaa_audio_ctl*,int,int,int) ; 

__attribute__((used)) static void
FUNC3(struct hdaa_audio_ctl *ctl, int ossdev,
    int mute, int *left, int *right)
{
	int i, zleft, zright, sleft, sright, smute, lval, rval;

	ctl->devleft[ossdev] = *left;
	ctl->devright[ossdev] = *right;
	ctl->devmute[ossdev] = mute;
	smute = sleft = sright = zleft = zright = 0;
	for (i = 0; i < SOUND_MIXER_NRDEVICES; i++) {
		sleft += ctl->devleft[i];
		sright += ctl->devright[i];
		smute |= ctl->devmute[i];
		if (i == ossdev)
			continue;
		zleft += ctl->devleft[i];
		zright += ctl->devright[i];
	}
	lval = FUNC0(ctl, sleft);
	rval = FUNC0(ctl, sright);
	FUNC2(ctl, smute, lval, rval);
	*left -= FUNC1(ctl, lval) - FUNC1(ctl, FUNC0(ctl, zleft));
	*right -= FUNC1(ctl, rval) - FUNC1(ctl, FUNC0(ctl, zright));
}