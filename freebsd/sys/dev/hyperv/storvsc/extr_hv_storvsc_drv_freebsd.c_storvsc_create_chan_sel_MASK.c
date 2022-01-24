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
struct vmbus_channel {int dummy; } ;
struct storvsc_softc {int hs_nchan; struct vmbus_channel** hs_sel_chan; struct vmbus_channel* hs_chan; } ;

/* Variables and functions */
 struct vmbus_channel** FUNC0 (struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel**,int) ; 

__attribute__((used)) static void
FUNC2(struct storvsc_softc *sc)
{
	struct vmbus_channel **subch;
	int i, nsubch;

	sc->hs_sel_chan[0] = sc->hs_chan;
	nsubch = sc->hs_nchan - 1;
	if (nsubch == 0)
		return;

	subch = FUNC0(sc->hs_chan, nsubch);
	for (i = 0; i < nsubch; i++)
		sc->hs_sel_chan[i + 1] = subch[i];
	FUNC1(subch, nsubch);
}