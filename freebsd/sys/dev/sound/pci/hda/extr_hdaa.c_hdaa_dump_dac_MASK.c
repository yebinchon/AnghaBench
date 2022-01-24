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
struct hdaa_widget {scalar_t__ enable; } ;
struct hdaa_pcm_devinfo {size_t playas; int /*<<< orphan*/  dev; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {struct hdaa_audio_as* as; TYPE_1__* chans; } ;
struct hdaa_audio_as {int* chans; int num_chans; scalar_t__* pins; } ;
typedef  int nid_t ;
struct TYPE_2__ {int* io; int /*<<< orphan*/  supp_pcm_size_rate; int /*<<< orphan*/  supp_stream_formats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdaa_pcm_devinfo*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC3 (struct hdaa_devinfo*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void
FUNC5(struct hdaa_pcm_devinfo *pdevinfo)
{
	struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
	struct hdaa_audio_as *as;
	struct hdaa_widget *w;
	nid_t *nids;
	int chid, i;

	if (pdevinfo->playas < 0)
		return;

	FUNC0(pdevinfo->dev, "Playback:\n");

	chid = devinfo->as[pdevinfo->playas].chans[0];
	FUNC1(pdevinfo->dev,
	    devinfo->chans[chid].supp_stream_formats,
	    devinfo->chans[chid].supp_pcm_size_rate);
	for (i = 0; i < devinfo->as[pdevinfo->playas].num_chans; i++) {
		chid = devinfo->as[pdevinfo->playas].chans[i];
		FUNC0(pdevinfo->dev, "            DAC:");
		for (nids = devinfo->chans[chid].io; *nids != -1; nids++)
			FUNC4(" %d", *nids);
		FUNC4("\n");
	}

	as = &devinfo->as[pdevinfo->playas];
	for (i = 0; i < 16; i++) {
		if (as->pins[i] <= 0)
			continue;
		w = FUNC3(devinfo, as->pins[i]);
		if (w == NULL || w->enable == 0)
			continue;
		FUNC0(pdevinfo->dev, "\n");
		FUNC2(pdevinfo, as->pins[i], 0);
	}
	FUNC0(pdevinfo->dev, "\n");
}