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
struct hdaa_widget {scalar_t__ enable; scalar_t__ ossdev; scalar_t__ bindas; } ;
struct hdaa_pcm_devinfo {scalar_t__ recas; int /*<<< orphan*/  dev; struct hdaa_devinfo* devinfo; } ;
struct hdaa_devinfo {int startnode; int endnode; } ;

/* Variables and functions */
 scalar_t__ SOUND_MIXER_IMIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct hdaa_pcm_devinfo*,int,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC2 (struct hdaa_devinfo*,int) ; 

__attribute__((used)) static void
FUNC3(struct hdaa_pcm_devinfo *pdevinfo)
{
	struct hdaa_devinfo *devinfo = pdevinfo->devinfo;
	struct hdaa_widget *w;
	int i;
	int printed = 0;

	for (i = devinfo->startnode; i < devinfo->endnode; i++) {
		w = FUNC2(devinfo, i);
		if (w == NULL || w->enable == 0)
			continue;
		if (w->ossdev != SOUND_MIXER_IMIX)
			continue;
		if (w->bindas != pdevinfo->recas)
			continue;
		if (printed == 0) {
			printed = 1;
			FUNC0(pdevinfo->dev, "Input Mix:\n");
		}
		FUNC0(pdevinfo->dev, "\n");
		FUNC1(pdevinfo, i, 0);
	}
	if (printed)
		FUNC0(pdevinfo->dev, "\n");
}