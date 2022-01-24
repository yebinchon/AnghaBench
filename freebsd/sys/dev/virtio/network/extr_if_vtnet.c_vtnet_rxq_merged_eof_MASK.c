#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  rx_mergeable_failed; } ;
struct vtnet_softc {TYPE_3__ vtnet_stats; } ;
struct TYPE_4__ {int /*<<< orphan*/  vrxs_iqdrops; int /*<<< orphan*/  vrxs_ierrors; } ;
struct vtnet_rxq {TYPE_1__ vtnrx_stats; struct virtqueue* vtnrx_vq; struct vtnet_softc* vtnrx_sc; } ;
struct virtqueue {int dummy; } ;
struct TYPE_5__ {int len; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_2__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (struct virtqueue*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct vtnet_rxq*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct vtnet_rxq*,int) ; 
 scalar_t__ FUNC4 (struct vtnet_rxq*) ; 

__attribute__((used)) static int
FUNC5(struct vtnet_rxq *rxq, struct mbuf *m_head, int nbufs)
{
	struct vtnet_softc *sc;
	struct virtqueue *vq;
	struct mbuf *m, *m_tail;
	int len;

	sc = rxq->vtnrx_sc;
	vq = rxq->vtnrx_vq;
	m_tail = m_head;

	while (--nbufs > 0) {
		m = FUNC1(vq, &len);
		if (m == NULL) {
			rxq->vtnrx_stats.vrxs_ierrors++;
			goto fail;
		}

		if (FUNC4(rxq) != 0) {
			rxq->vtnrx_stats.vrxs_iqdrops++;
			FUNC2(rxq, m);
			if (nbufs > 1)
				FUNC3(rxq, nbufs);
			goto fail;
		}

		if (m->m_len < len)
			len = m->m_len;

		m->m_len = len;
		m->m_flags &= ~M_PKTHDR;

		m_head->m_pkthdr.len += len;
		m_tail->m_next = m;
		m_tail = m;
	}

	return (0);

fail:
	sc->vtnet_stats.rx_mergeable_failed++;
	FUNC0(m_head);

	return (1);
}