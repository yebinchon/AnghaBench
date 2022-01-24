#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct net_device*,struct mbuf*) ;} ;
struct TYPE_13__ {scalar_t__ lro_cnt; } ;
struct mlx4_en_rx_ring {int size_mask; unsigned int bytes; int cons; int prod; TYPE_6__ lro; int /*<<< orphan*/  packets; int /*<<< orphan*/  errors; scalar_t__ fcs_del; scalar_t__ buf; struct mlx4_en_rx_mbuf* mbuf; } ;
struct mlx4_en_rx_mbuf {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct TYPE_12__ {int /*<<< orphan*/  rx_coal_avg; int /*<<< orphan*/  lro_misses; } ;
struct TYPE_11__ {int /*<<< orphan*/  rx_chksum_none; int /*<<< orphan*/  rx_chksum_good; } ;
struct mlx4_en_priv {int cqe_factor; int validate_loopback; TYPE_5__ pstats; TYPE_4__ port_stats; int /*<<< orphan*/  port_up; TYPE_2__* mdev; struct mlx4_en_rx_ring** rx_ring; } ;
struct mlx4_cq {int cons_index; } ;
struct mlx4_en_cq {size_t ring; int size; struct mlx4_cqe* buf; struct mlx4_cq mcq; } ;
struct mlx4_cqe {int owner_sr_opcode; int status; int checksum; int /*<<< orphan*/  sl_vid; int /*<<< orphan*/  vlan_my_qpn; int /*<<< orphan*/  immed_rss_invalid; int /*<<< orphan*/  byte_cnt; } ;
struct TYPE_10__ {int flowid; int csum_flags; int /*<<< orphan*/  csum_data; int /*<<< orphan*/  ether_vtag; struct net_device* rcvif; } ;
struct mbuf {TYPE_3__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct TYPE_8__ {int udp_rss; } ;
struct TYPE_9__ {TYPE_1__ profile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int,int) ; 
 int CSUM_DATA_VALID ; 
 int CSUM_IP_CHECKED ; 
 int CSUM_IP_VALID ; 
 int CSUM_PSEUDO_HDR ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int MLX4_CQE_CVLAN_PRESENT_MASK ; 
 int MLX4_CQE_OWNER_MASK ; 
 int MLX4_CQE_STATUS_IPOK ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 scalar_t__ FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (struct mlx4_en_priv*,struct mlx4_cqe*) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_cq*) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int,int const) ; 
 struct mbuf* FUNC14 (struct mlx4_en_priv*,struct mlx4_en_rx_ring*,struct mlx4_en_rx_desc*,struct mlx4_en_rx_mbuf*,unsigned int) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx4_en_rx_ring*) ; 
 struct mlx4_en_priv* FUNC16 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_6__*) ; 
 scalar_t__ FUNC20 (TYPE_6__*,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (struct mlx4_en_priv*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC23 () ; 

int FUNC24(struct net_device *dev, struct mlx4_en_cq *cq, int budget)
{
	struct mlx4_en_priv *priv = FUNC16(dev);
	struct mlx4_cqe *cqe;
	struct mlx4_en_rx_ring *ring = priv->rx_ring[cq->ring];
	struct mlx4_en_rx_mbuf *mb_list;
	struct mlx4_en_rx_desc *rx_desc;
	struct mbuf *mb;
	struct mlx4_cq *mcq = &cq->mcq;
	struct mlx4_cqe *buf = cq->buf;
	int index;
	unsigned int length;
	int polled = 0;
	u32 cons_index = mcq->cons_index;
	u32 size_mask = ring->size_mask;
	int size = cq->size;
	int factor = priv->cqe_factor;
	const int udp_rss = priv->mdev->profile.udp_rss;

	if (!priv->port_up)
		return 0;

	/* We assume a 1:1 mapping between CQEs and Rx descriptors, so Rx
	 * descriptor offset can be deducted from the CQE index instead of
	 * reading 'cqe->index' */
	index = cons_index & size_mask;
	cqe = &buf[FUNC1(index, factor)];

	/* Process all completed CQEs */
	while (FUNC4(cqe->owner_sr_opcode & MLX4_CQE_OWNER_MASK,
		    cons_index & size)) {
		mb_list = ring->mbuf + index;
		rx_desc = ((struct mlx4_en_rx_desc *)ring->buf) + index;

		/*
		 * make sure we read the CQE after we read the ownership bit
		 */
		FUNC17();

		if (FUNC9(priv, cqe)) {
			goto next;
		}
		/*
		 * Packet is OK - process it.
		 */
		length = FUNC6(cqe->byte_cnt);
		length -= ring->fcs_del;

		mb = FUNC14(priv, ring, rx_desc, mb_list, length);
		if (FUNC21(!mb)) {
			ring->errors++;
			goto next;
		}

		ring->bytes += length;
		ring->packets++;

		if (FUNC21(priv->validate_loopback)) {
			FUNC22(priv, mb);
			goto next;
		}

		/* forward Toeplitz compatible hash value */
		mb->m_pkthdr.flowid = FUNC6(cqe->immed_rss_invalid);
		FUNC3(mb, FUNC13(cqe->status, udp_rss));
		mb->m_pkthdr.rcvif = dev;
		if (FUNC6(cqe->vlan_my_qpn) &
		    MLX4_CQE_CVLAN_PRESENT_MASK) {
			mb->m_pkthdr.ether_vtag = FUNC5(cqe->sl_vid);
			mb->m_flags |= M_VLANTAG;
		}
		if (FUNC10(dev->if_capenable &
		    (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6)) &&
		    (cqe->status & FUNC7(MLX4_CQE_STATUS_IPOK)) &&
		    (cqe->checksum == FUNC7(0xffff))) {
			priv->port_stats.rx_chksum_good++;
			mb->m_pkthdr.csum_flags =
			    CSUM_IP_CHECKED | CSUM_IP_VALID |
			    CSUM_DATA_VALID | CSUM_PSEUDO_HDR;
			mb->m_pkthdr.csum_data = FUNC8(0xffff);
			/* This packet is eligible for LRO if it is:
			 * - DIX Ethernet (type interpretation)
			 * - TCP/IP (v4)
			 * - without IP options
			 * - not an IP fragment
			 */
#ifdef INET
			if (mlx4_en_can_lro(cqe->status) &&
					(dev->if_capenable & IFCAP_LRO)) {
				if (ring->lro.lro_cnt != 0 &&
						tcp_lro_rx(&ring->lro, mb, 0) == 0)
					goto next;
			}

#endif
			/* LRO not possible, complete processing here */
			FUNC2(priv->pstats.lro_misses);
		} else {
			mb->m_pkthdr.csum_flags = 0;
			priv->port_stats.rx_chksum_none++;
		}

		/* Push it up the stack */
		dev->if_input(dev, mb);

next:
		++cons_index;
		index = cons_index & size_mask;
		cqe = &buf[FUNC1(index, factor)];
		if (++polled == budget)
			goto out;
	}
	/* Flush all pending IP reassembly sessions */
out:
#ifdef INET
	tcp_lro_flush_all(&ring->lro);
#endif
	FUNC0(priv->pstats.rx_coal_avg, polled);
	mcq->cons_index = cons_index;
	FUNC11(mcq);
	FUNC23(); /* ensure HW sees CQ consumer before we post new buffers */
	ring->cons = mcq->cons_index;
	ring->prod += polled; /* Polled descriptors were realocated in place */
	FUNC15(ring);
	return polled;

}