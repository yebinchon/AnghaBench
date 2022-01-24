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
typedef  int /*<<< orphan*/  u_int ;
struct vmbus_channel {int dummy; } ;
struct hn_softc {int hn_rx_ring_inuse; struct vmbus_channel* hn_prichan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct vmbus_channel*,int /*<<< orphan*/ ) ; 
 struct vmbus_channel** FUNC2 (struct vmbus_channel*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct vmbus_channel**,int) ; 

__attribute__((used)) static void
FUNC4(struct hn_softc *sc, u_int pollhz)
{
	int nsubch = sc->hn_rx_ring_inuse - 1;

	FUNC0(sc);

	if (nsubch > 0) {
		struct vmbus_channel **subch;
		int i;

		subch = FUNC2(sc->hn_prichan, nsubch);
		for (i = 0; i < nsubch; ++i)
			FUNC1(subch[i], pollhz);
		FUNC3(subch, nsubch);
	}
	FUNC1(sc->hn_prichan, pollhz);
}