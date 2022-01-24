#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  vtxs_omcasts; int /*<<< orphan*/  vtxs_obytes; int /*<<< orphan*/  vtxs_opackets; } ;
struct vtnet_txq {scalar_t__ vtntx_watchdog; TYPE_2__ vtntx_stats; struct virtqueue* vtntx_vq; } ;
struct vtnet_tx_header {struct mbuf* vth_mbuf; } ;
struct virtqueue {int dummy; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int M_MCAST ; 
 int /*<<< orphan*/  FUNC0 (struct vtnet_txq*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct vtnet_tx_header*) ; 
 struct vtnet_tx_header* FUNC3 (struct virtqueue*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct virtqueue*) ; 
 int /*<<< orphan*/  vtnet_tx_header_zone ; 

__attribute__((used)) static int
FUNC5(struct vtnet_txq *txq)
{
	struct virtqueue *vq;
	struct vtnet_tx_header *txhdr;
	struct mbuf *m;
	int deq;

	vq = txq->vtntx_vq;
	deq = 0;
	FUNC0(txq);

	while ((txhdr = FUNC3(vq, NULL)) != NULL) {
		m = txhdr->vth_mbuf;
		deq++;

		txq->vtntx_stats.vtxs_opackets++;
		txq->vtntx_stats.vtxs_obytes += m->m_pkthdr.len;
		if (m->m_flags & M_MCAST)
			txq->vtntx_stats.vtxs_omcasts++;

		FUNC1(m);
		FUNC2(vtnet_tx_header_zone, txhdr);
	}

	if (FUNC4(vq))
		txq->vtntx_watchdog = 0;

	return (deq);
}