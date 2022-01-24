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
struct hdaa_devinfo {int ascnt; int num_chans; struct hdaa_chan* chans; int /*<<< orphan*/  dev; struct hdaa_audio_as* as; } ;
struct TYPE_2__ {int /*<<< orphan*/  fmtlist; } ;
struct hdaa_chan {int as; int asindex; int /*<<< orphan*/  dir; struct hdaa_devinfo* devinfo; int /*<<< orphan*/  fmtlist; TYPE_1__ caps; } ;
struct hdaa_audio_as {scalar_t__ enable; int num_chans; scalar_t__ dir; int* chans; } ;

/* Variables and functions */
 scalar_t__ HDAA_CTL_IN ; 
 int /*<<< orphan*/  M_HDAA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  PCMDIR_PLAY ; 
 int /*<<< orphan*/  PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdaa_chan*) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct hdaa_chan*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct hdaa_devinfo *devinfo)
{
	struct hdaa_audio_as *as = devinfo->as;
	int i, j, cnt = 0, free;

	for (j = 0; j < devinfo->ascnt; j++) {
		if (as[j].enable)
			cnt += as[j].num_chans;
	}
	if (devinfo->num_chans == 0) {
		devinfo->chans = (struct hdaa_chan *)FUNC2(
		    sizeof(struct hdaa_chan) * cnt,
		    M_HDAA, M_ZERO | M_NOWAIT);
		if (devinfo->chans == NULL) {
			FUNC0(devinfo->dev,
			    "Channels memory allocation failed!\n");
			return;
		}
	} else {
		devinfo->chans = (struct hdaa_chan *)FUNC3(devinfo->chans,
		    sizeof(struct hdaa_chan) * (devinfo->num_chans + cnt),
		    M_HDAA, M_ZERO | M_NOWAIT);
		if (devinfo->chans == NULL) {
			devinfo->num_chans = 0;
			FUNC0(devinfo->dev,
			    "Channels memory allocation failed!\n");
			return;
		}
		/* Fixup relative pointers after realloc */
		for (j = 0; j < devinfo->num_chans; j++)
			devinfo->chans[j].caps.fmtlist = devinfo->chans[j].fmtlist;
	}
	free = devinfo->num_chans;
	devinfo->num_chans += cnt;

	for (j = free; j < free + cnt; j++) {
		devinfo->chans[j].devinfo = devinfo;
		devinfo->chans[j].as = -1;
	}

	/* Assign associations in order of their numbers, */
	for (j = 0; j < devinfo->ascnt; j++) {
		if (as[j].enable == 0)
			continue;
		for (i = 0; i < as[j].num_chans; i++) {
			devinfo->chans[free].as = j;
			devinfo->chans[free].asindex = i;
			devinfo->chans[free].dir =
			    (as[j].dir == HDAA_CTL_IN) ? PCMDIR_REC : PCMDIR_PLAY;
			FUNC1(&devinfo->chans[free]);
			as[j].chans[i] = free;
			free++;
		}
	}
}