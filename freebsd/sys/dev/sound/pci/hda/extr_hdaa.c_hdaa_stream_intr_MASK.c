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
struct hdaa_devinfo {int num_chans; struct hdaa_chan* chans; } ;
struct hdaa_chan {int flags; scalar_t__ dir; int sid; int /*<<< orphan*/  c; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int HDAA_CHN_RUNNING ; 
 scalar_t__ PCMDIR_PLAY ; 
 scalar_t__ PCMDIR_REC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct hdaa_devinfo* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdaa_devinfo*) ; 
 int /*<<< orphan*/  FUNC3 (struct hdaa_devinfo*) ; 

__attribute__((used)) static void
FUNC4(device_t dev, int dir, int stream)
{
	struct hdaa_devinfo *devinfo = FUNC1(dev);
	struct hdaa_chan *ch;
	int i;

	for (i = 0; i < devinfo->num_chans; i++) {
		ch = &devinfo->chans[i];
		if (!(ch->flags & HDAA_CHN_RUNNING))
			continue;
		if (ch->dir == ((dir == 1) ? PCMDIR_PLAY : PCMDIR_REC) &&
		    ch->sid == stream) {
			FUNC3(devinfo);
			FUNC0(ch->c);
			FUNC2(devinfo);
		}
	}
}