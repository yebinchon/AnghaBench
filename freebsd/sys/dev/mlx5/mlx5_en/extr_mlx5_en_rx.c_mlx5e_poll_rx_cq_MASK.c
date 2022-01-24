#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
typedef  size_t u16 ;
struct pfil_head {int dummy; } ;
struct TYPE_19__ {int /*<<< orphan*/  next_wqe_index; } ;
struct mlx5e_rx_wqe {TYPE_6__ next; } ;
struct TYPE_13__ {int /*<<< orphan*/  wq; } ;
struct TYPE_20__ {scalar_t__ lro_cnt; } ;
struct TYPE_17__ {int /*<<< orphan*/  packets; int /*<<< orphan*/  bytes; int /*<<< orphan*/  wqe_err; } ;
struct mlx5e_rq {TYPE_11__ cq; int /*<<< orphan*/  wq; TYPE_9__* ifp; TYPE_7__ lro; TYPE_4__ stats; TYPE_3__* mbuf; int /*<<< orphan*/  dma_tag; TYPE_2__* channel; } ;
struct mlx5_cqe64 {int op_own; int /*<<< orphan*/  byte_cnt; int /*<<< orphan*/  wqe_counter; } ;
struct TYPE_18__ {scalar_t__ csum_flags; int /*<<< orphan*/  numa_domain; } ;
struct mbuf {TYPE_5__ m_pkthdr; int /*<<< orphan*/  m_data; scalar_t__ m_len; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_21__ {int if_capenable; int /*<<< orphan*/  (* if_input ) (TYPE_9__*,struct mbuf*) ;int /*<<< orphan*/  if_numa_domain; int /*<<< orphan*/  if_vnet; } ;
struct TYPE_16__ {int /*<<< orphan*/  dma_map; struct mbuf* mbuf; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {TYPE_1__* priv; } ;
struct TYPE_14__ {struct pfil_head* pfil; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_POSTREAD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ MHLEN ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_MAX_RX_BYTES ; 
 scalar_t__ MLX5E_NET_IP_ALIGN ; 
 scalar_t__ MLX5_COMPRESSED ; 
 int MLX5_CQE_RESP_SEND ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
#define  PFIL_CONSUMED 130 
#define  PFIL_DROPPED 129 
 scalar_t__ FUNC4 (struct pfil_head*) ; 
 scalar_t__ PFIL_IN ; 
 scalar_t__ PFIL_MEMPTR ; 
 int PFIL_PASS ; 
#define  PFIL_REALLOCED 128 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct mlx5_cqe64*) ; 
 struct mlx5e_rx_wqe* FUNC15 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_cqe64*,struct mlx5e_rq*,struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_11__*) ; 
 struct mlx5_cqe64* FUNC19 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC20 (struct mbuf*,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (struct pfil_head*,int /*<<< orphan*/ ,TYPE_9__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_9__*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_7__*,struct mbuf*) ; 
 scalar_t__ FUNC25 (TYPE_7__*,struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 

__attribute__((used)) static int
FUNC27(struct mlx5e_rq *rq, int budget)
{
	struct pfil_head *pfil;
	int i, rv;

	FUNC1(rq->ifp->if_vnet);
	pfil = rq->channel->priv->pfil;
	for (i = 0; i < budget; i++) {
		struct mlx5e_rx_wqe *wqe;
		struct mlx5_cqe64 *cqe;
		struct mbuf *mb;
		__be16 wqe_counter_be;
		u16 wqe_counter;
		u32 byte_cnt, seglen;

		cqe = FUNC19(&rq->cq);
		if (!cqe)
			break;

		if (FUNC14(cqe) == MLX5_COMPRESSED)
			FUNC18(&rq->cq);

		FUNC12(&rq->cq.wq);

		wqe_counter_be = cqe->wqe_counter;
		wqe_counter = FUNC7(wqe_counter_be);
		wqe = FUNC15(&rq->wq, wqe_counter);
		byte_cnt = FUNC8(cqe->byte_cnt);

		FUNC9(rq->dma_tag,
		    rq->mbuf[wqe_counter].dma_map,
		    BUS_DMASYNC_POSTREAD);

		if (FUNC26((cqe->op_own >> 4) != MLX5_CQE_RESP_SEND)) {
			rq->stats.wqe_err++;
			goto wq_ll_pop;
		}
		if (pfil != NULL && FUNC4(pfil)) {
			seglen = FUNC3(byte_cnt, MLX5E_MAX_RX_BYTES);
			rv = FUNC22(rq->channel->priv->pfil,
			    rq->mbuf[wqe_counter].data, rq->ifp,
			    seglen | PFIL_MEMPTR | PFIL_IN, NULL);

			switch (rv) {
			case PFIL_DROPPED:
			case PFIL_CONSUMED:
				/*
				 * Filter dropped or consumed it. In
				 * either case, we can just recycle
				 * buffer; there is no more work to do.
				 */
				rq->stats.packets++;
				goto wq_ll_pop;
			case PFIL_REALLOCED:
				/*
				 * Filter copied it; recycle buffer
				 * and receive the new mbuf allocated
				 * by the Filter
				 */
				mb = FUNC21(rq->mbuf[wqe_counter].data);
				goto rx_common;
			default:
				/*
				 * The Filter said it was OK, so
				 * receive like normal.
				 */
				FUNC2(rv == PFIL_PASS,
					("Filter returned %d!\n", rv));
			}
		}
		if ((MHLEN - MLX5E_NET_IP_ALIGN) >= byte_cnt &&
		    (mb = FUNC11(M_NOWAIT, MT_DATA)) != NULL) {
			/* set maximum mbuf length */
			mb->m_len = MHLEN - MLX5E_NET_IP_ALIGN;
			/* get IP header aligned */
			mb->m_data += MLX5E_NET_IP_ALIGN;

			FUNC6(rq->mbuf[wqe_counter].data, FUNC20(mb, caddr_t),
			    byte_cnt);
		} else {
			mb = rq->mbuf[wqe_counter].mbuf;
			rq->mbuf[wqe_counter].mbuf = NULL;	/* safety clear */

			FUNC10(rq->dma_tag,
			    rq->mbuf[wqe_counter].dma_map);
		}
rx_common:
		FUNC17(cqe, rq, mb, byte_cnt);
		rq->stats.bytes += byte_cnt;
		rq->stats.packets++;
#ifdef NUMA
		mb->m_pkthdr.numa_domain = rq->ifp->if_numa_domain;
#endif

#if !defined(HAVE_TCP_LRO_RX)
		FUNC24(&rq->lro, mb);
#else
		if (mb->m_pkthdr.csum_flags == 0 ||
		    (rq->ifp->if_capenable & IFCAP_LRO) == 0 ||
		    rq->lro.lro_cnt == 0 ||
		    tcp_lro_rx(&rq->lro, mb, 0) != 0) {
			rq->ifp->if_input(rq->ifp, mb);
		}
#endif
wq_ll_pop:
		FUNC16(&rq->wq, wqe_counter_be,
		    &wqe->next.next_wqe_index);
	}
	FUNC0();

	FUNC13(&rq->cq.wq);

	/* ensure cq space is freed before enabling more cqes */
	FUNC5();
	return (i);
}