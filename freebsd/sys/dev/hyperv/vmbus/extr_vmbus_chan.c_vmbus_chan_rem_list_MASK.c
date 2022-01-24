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
struct vmbus_softc {int /*<<< orphan*/  vmbus_chans; int /*<<< orphan*/  vmbus_chan_lock; } ;
struct vmbus_channel {int /*<<< orphan*/  ch_stflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMBUS_CHAN_ST_ONLIST_SHIFT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ch_link ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct vmbus_softc *sc, struct vmbus_channel *chan)
{

	FUNC2(&sc->vmbus_chan_lock, MA_OWNED);
	if (FUNC1(&chan->ch_stflags,
	    VMBUS_CHAN_ST_ONLIST_SHIFT) == 0)
		FUNC3("channel is not on the list");
	FUNC0(&sc->vmbus_chans, chan, ch_link);
}