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
struct sc_info {scalar_t__* run; int /*<<< orphan*/  lock; struct pcmchan_caps* caps; int /*<<< orphan*/  dev; } ;
struct sc_chinfo {scalar_t__ dir; struct sc_info* parent; } ;
struct pcmchan_caps {int dummy; } ;
typedef  int /*<<< orphan*/  kobj_t ;

/* Variables and functions */
 scalar_t__ PCMDIR_PLAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct pcmchan_caps envy24_playcaps ; 
 struct pcmchan_caps envy24_reccaps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct pcmchan_caps *
FUNC3(kobj_t obj, void *data)
{
	struct sc_chinfo *ch = data;
	struct sc_info *sc = ch->parent;
	struct pcmchan_caps *rtn;

#if(0)
	device_printf(sc->dev, "envy24chan_getcaps()\n");
#endif
	FUNC1(sc->lock);
	if (ch->dir == PCMDIR_PLAY) {
		if (sc->run[0] == 0)
			rtn = &envy24_playcaps;
		else
			rtn = &sc->caps[0];
	}
	else {
		if (sc->run[1] == 0)
			rtn = &envy24_reccaps;
		else
			rtn = &sc->caps[1];
	}
	FUNC2(sc->lock);

	return rtn;
}