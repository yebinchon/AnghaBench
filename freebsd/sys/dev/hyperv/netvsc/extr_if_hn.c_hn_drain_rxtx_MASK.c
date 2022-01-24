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
struct hn_softc {struct vmbus_channel* hn_prichan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*,struct vmbus_channel*) ; 
 struct vmbus_channel** FUNC1 (struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmbus_channel**,int) ; 

__attribute__((used)) static void
FUNC3(struct hn_softc *sc, int nchan)
{
	struct vmbus_channel **subch = NULL;
	int nsubch;

	/*
	 * Drain RX/TX bufrings and interrupts.
	 */
	nsubch = nchan - 1;
	if (nsubch > 0)
		subch = FUNC1(sc->hn_prichan, nsubch);

	if (subch != NULL) {
		int i;

		for (i = 0; i < nsubch; ++i)
			FUNC0(sc, subch[i]);
	}
	FUNC0(sc, sc->hn_prichan);

	if (subch != NULL)
		FUNC2(subch, nsubch);
}