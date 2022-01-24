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
struct hdaa_widget {scalar_t__ enable; } ;
struct hdaa_pcm_devinfo {size_t recas; int recsrc; scalar_t__ playas; scalar_t__ index; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {struct hdaa_chan* chans; struct hdaa_audio_as* as; } ;
struct hdaa_chan {scalar_t__* io; } ;
struct hdaa_audio_ctl {scalar_t__ enable; int ossmask; scalar_t__* devmute; scalar_t__* devright; scalar_t__* devleft; TYPE_1__* widget; } ;
struct hdaa_audio_as {int num_chans; size_t* chans; int /*<<< orphan*/  mixed; } ;
struct TYPE_2__ {scalar_t__ bindas; } ;

/* Variables and functions */
 int SOUND_MIXER_NRDEVICES ; 
 int /*<<< orphan*/  FUNC0 (struct hdaa_pcm_devinfo*,int) ; 
 struct hdaa_audio_ctl* FUNC1 (struct hdaa_devinfo*,int*) ; 
 int FUNC2 (struct hdaa_pcm_devinfo*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC4 (struct hdaa_devinfo*) ; 
 struct hdaa_widget* FUNC5 (struct hdaa_devinfo*,scalar_t__) ; 
 struct hdaa_pcm_devinfo* FUNC6 (struct snd_mixer*) ; 
 int FUNC7 (struct snd_mixer*) ; 

__attribute__((used)) static uint32_t
FUNC8(struct snd_mixer *m, uint32_t src)
{
	struct hdaa_pcm_devinfo *pdevinfo = FUNC6(m);
	struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
	struct hdaa_widget *w;
	struct hdaa_audio_as *as;
	struct hdaa_audio_ctl *ctl;
	struct hdaa_chan *ch;
	int i, j;
	uint32_t ret = 0xffffffff;

	FUNC3(devinfo);
	if (pdevinfo->recas < 0) {
		FUNC4(devinfo);
		return (0);
	}
	as = &devinfo->as[pdevinfo->recas];

	/* For non-mixed associations we always recording everything. */
	if (!as->mixed) {
		FUNC4(devinfo);
		return (FUNC7(m));
	}

	/* Commutate requested recsrc for each ADC. */
	for (j = 0; j < as->num_chans; j++) {
		ch = &devinfo->chans[as->chans[j]];
		for (i = 0; ch->io[i] >= 0; i++) {
			w = FUNC5(devinfo, ch->io[i]);
			if (w == NULL || w->enable == 0)
				continue;
			ret &= FUNC2(pdevinfo, src,
			    ch->io[i], 0);
		}
	}
	if (ret == 0xffffffff)
		ret = 0;

	/*
	 * Some controls could be shared. Reset volumes for controls
	 * related to previously chosen devices, as they may no longer
	 * affect the signal.
	 */
	i = 0;
	while ((ctl = FUNC1(devinfo, &i)) != NULL) {
		if (ctl->enable == 0 ||
		    !(ctl->ossmask & pdevinfo->recsrc))
			continue;
		if (!((pdevinfo->playas >= 0 &&
		    ctl->widget->bindas == pdevinfo->playas) ||
		    (pdevinfo->recas >= 0 &&
		    ctl->widget->bindas == pdevinfo->recas) ||
		    (pdevinfo->index == 0 &&
		    ctl->widget->bindas == -2)))
			continue;
		for (j = 0; j < SOUND_MIXER_NRDEVICES; j++) {
			if (pdevinfo->recsrc & (1 << j)) {
				ctl->devleft[j] = 0;
				ctl->devright[j] = 0;
				ctl->devmute[j] = 0;
			}
		}
	}

	/*
	 * Some controls could be shared. Set volumes for controls
	 * related to devices selected both previously and now.
	 */
	for (j = 0; j < SOUND_MIXER_NRDEVICES; j++) {
		if ((ret | pdevinfo->recsrc) & (1 << j))
			FUNC0(pdevinfo, j);
	}

	pdevinfo->recsrc = ret;
	FUNC4(devinfo);
	return (ret);
}