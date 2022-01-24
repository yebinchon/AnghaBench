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
struct TYPE_2__ {int /*<<< orphan*/  widget_cap; } ;
struct hdaa_widget {TYPE_1__ param; } ;
struct hdaa_devinfo {int /*<<< orphan*/  dev; } ;
struct hdaa_chan {int flags; scalar_t__ dir; int* io; int /*<<< orphan*/  sid; struct hdaa_devinfo* devinfo; } ;

/* Variables and functions */
 int HDAA_CHN_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hdaa_widget* FUNC7 (struct hdaa_devinfo*,int) ; 

__attribute__((used)) static void
FUNC8(struct hdaa_chan *ch)
{
	struct hdaa_devinfo *devinfo = ch->devinfo;
	struct hdaa_widget *w;
	int i;

	if ((ch->flags & HDAA_CHN_RUNNING) == 0)
		return;
	ch->flags &= ~HDAA_CHN_RUNNING;
	FUNC1(FUNC5(devinfo->dev), devinfo->dev,
	    ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
	for (i = 0; ch->io[i] != -1; i++) {
		w = FUNC7(ch->devinfo, ch->io[i]);
		if (w == NULL)
			continue;
		if (FUNC4(w->param.widget_cap)) {
			FUNC6(devinfo->dev,
			    FUNC3(0, ch->io[i], 0));
		}
		FUNC6(devinfo->dev,
		    FUNC2(0, ch->io[i],
		    0));
	}
	FUNC0(FUNC5(devinfo->dev), devinfo->dev,
	    ch->dir == PCMDIR_PLAY ? 1 : 0, ch->sid);
}