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
struct vtnet_txq {int dummy; } ;
struct virtio_net_hdr {int dummy; } ;
struct TYPE_3__ {struct virtio_net_hdr hdr; } ;
struct vtnet_tx_header {TYPE_1__ vth_uhdr; } ;
struct TYPE_4__ {int csum_flags; int /*<<< orphan*/  ether_vtag; } ;
struct mbuf {int m_flags; TYPE_2__ m_pkthdr; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 int M_VLANTAG ; 
 int M_ZERO ; 
 int VTNET_CSUM_ALL_OFFLOAD ; 
 struct mbuf* FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct vtnet_tx_header* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct vtnet_tx_header*) ; 
 int /*<<< orphan*/  vtnet_tx_header_zone ; 
 int FUNC5 (struct vtnet_txq*,struct mbuf**,struct vtnet_tx_header*) ; 
 struct mbuf* FUNC6 (struct vtnet_txq*,struct mbuf*,struct virtio_net_hdr*) ; 

__attribute__((used)) static int
FUNC7(struct vtnet_txq *txq, struct mbuf **m_head, int flags)
{
	struct vtnet_tx_header *txhdr;
	struct virtio_net_hdr *hdr;
	struct mbuf *m;
	int error;

	m = *m_head;
	FUNC0(m);

	txhdr = FUNC3(vtnet_tx_header_zone, flags | M_ZERO);
	if (txhdr == NULL) {
		FUNC2(m);
		*m_head = NULL;
		return (ENOMEM);
	}

	/*
	 * Always use the non-mergeable header, regardless if the feature
	 * was negotiated. For transmit, num_buffers is always zero. The
	 * vtnet_hdr_size is used to enqueue the correct header size.
	 */
	hdr = &txhdr->vth_uhdr.hdr;

	if (m->m_flags & M_VLANTAG) {
		m = FUNC1(m, m->m_pkthdr.ether_vtag);
		if ((*m_head = m) == NULL) {
			error = ENOBUFS;
			goto fail;
		}
		m->m_flags &= ~M_VLANTAG;
	}

	if (m->m_pkthdr.csum_flags & VTNET_CSUM_ALL_OFFLOAD) {
		m = FUNC6(txq, m, hdr);
		if ((*m_head = m) == NULL) {
			error = ENOBUFS;
			goto fail;
		}
	}

	error = FUNC5(txq, m_head, txhdr);
	if (error == 0)
		return (0);

fail:
	FUNC4(vtnet_tx_header_zone, txhdr);

	return (error);
}