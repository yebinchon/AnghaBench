#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct TYPE_7__ {int /*<<< orphan*/  queue; scalar_t__ ifp; int /*<<< orphan*/  hook; int /*<<< orphan*/  running; } ;
typedef  TYPE_2__ drv_t ;
struct TYPE_8__ {int debug; TYPE_2__* sys; } ;
typedef  TYPE_3__ ct_chan_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC6 (char*,int) ; 

__attribute__((used)) static void FUNC7 (ct_chan_t *c, char *data, int len)
{
	drv_t *d = c->sys;
	struct mbuf *m;
#ifdef NETGRAPH
	int error;
#endif

	if (!d || !d->running)
		return;

	m = FUNC6 (data, len);
	if (! m) {
		FUNC1 (d, ("no memory for packet\n"));
#ifndef NETGRAPH
		FUNC4(d->ifp, IFCOUNTER_IQDROPS, 1);
#endif
		return;
	}
	if (c->debug > 1)
		FUNC5 (m, 0);
#ifdef NETGRAPH
	m->m_pkthdr.rcvif = 0;
	NG_SEND_DATA_ONLY (error, d->hook, m);
#else
	FUNC4(d->ifp, IFCOUNTER_IPACKETS, 1);
	m->m_pkthdr.rcvif = d->ifp;
	/* Check if there's a BPF listener on this interface.
	 * If so, hand off the raw packet to bpf. */
	FUNC0(d->ifp, m);
	FUNC2 (&d->queue, m);
#endif
}