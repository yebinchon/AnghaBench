#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_short ;
typedef  int /*<<< orphan*/  u_char ;
struct mbuf {int /*<<< orphan*/  m_next; } ;
struct TYPE_10__ {int timeout; TYPE_2__* ifp; TYPE_3__* chan; int /*<<< orphan*/  queue; int /*<<< orphan*/  hi_queue; int /*<<< orphan*/  running; } ;
typedef  TYPE_1__ drv_t ;
struct TYPE_12__ {size_t te; int /*<<< orphan*/ ** tbuf; int /*<<< orphan*/  tn; } ;
struct TYPE_11__ {int /*<<< orphan*/  if_drv_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  IFF_DRV_OACTIVE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  caddr_t ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct mbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC11 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC12 (drv_t *d)
{
	struct mbuf *m;
	u_short len;

	FUNC1 (d, ("ct_send, tn=%d\n", d->chan->tn));

	/* No output if the interface is down. */
	if (! d->running)
		return;

	/* No output if the modem is off. */
	if (! FUNC4 (d->chan) && !FUNC5 (d->chan))
		return;

	while (FUNC3 (d->chan)) {
		/* Get the packet to send. */
#ifdef NETGRAPH
		IF_DEQUEUE (&d->hi_queue, m);
		if (! m)
			IF_DEQUEUE (&d->queue, m);
#else
		m = FUNC11 (d->ifp);
#endif
		if (! m)
			return;
#ifndef NETGRAPH
		FUNC0 (d->ifp, m);
#endif
		len = FUNC9 (m, NULL);
		if (! m->m_next)
			FUNC6 (d->chan, (u_char*)FUNC10 (m, caddr_t),
				len, 0);
		else {
			FUNC7 (m, 0, len, d->chan->tbuf[d->chan->te]);
			FUNC6 (d->chan, d->chan->tbuf[d->chan->te],
				len, 0);
		}
		FUNC8 (m);

		/* Set up transmit timeout, if the transmit ring is not empty.
		 * Transmit timeout is 10 seconds. */
		d->timeout = 10;
	}
#ifndef NETGRAPH
	d->ifp->if_drv_flags |= IFF_DRV_OACTIVE;
#endif
}