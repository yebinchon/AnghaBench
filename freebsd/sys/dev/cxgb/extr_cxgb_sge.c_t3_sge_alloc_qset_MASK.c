#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_17__ ;
typedef  struct TYPE_21__   TYPE_16__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_13__ ;

/* Type definitions */
typedef  size_t u_int ;
struct tx_sw_desc {int dummy; } ;
struct tx_desc {int dummy; } ;
struct TYPE_19__ {int gen; int /*<<< orphan*/  holdoff_tmr; int /*<<< orphan*/  cntxt_id; scalar_t__ size; int /*<<< orphan*/  phys_addr; scalar_t__ cidx; int /*<<< orphan*/  lockbuf; int /*<<< orphan*/  lock; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  desc; } ;
struct TYPE_27__ {TYPE_16__* ifp; } ;
struct TYPE_23__ {int enabled; TYPE_5__ ctrl; } ;
struct sge_qset {size_t idx; TYPE_13__ rspq; TYPE_15__* fl; TYPE_2__* txq; TYPE_1__ lro; int /*<<< orphan*/  lock; TYPE_4__* adap; struct port_info* port; int /*<<< orphan*/  namebuf; } ;
struct rx_sw_desc {int dummy; } ;
struct rx_desc {int dummy; } ;
struct rsp_desc {int dummy; } ;
struct qset_params {scalar_t__ jumbo_buf_size; int /*<<< orphan*/  cong_thres; scalar_t__ rspq_size; scalar_t__ jumbo_size; scalar_t__ fl_size; scalar_t__* txq_size; } ;
struct port_info {TYPE_16__* ifp; } ;
struct ifaltq {int dummy; } ;
struct TYPE_25__ {int /*<<< orphan*/  reg_lock; struct sge_qset* qs; } ;
struct TYPE_26__ {TYPE_3__ sge; int /*<<< orphan*/ * tx_dmat; int /*<<< orphan*/  dev; int /*<<< orphan*/ * rx_jumbo_dmat; int /*<<< orphan*/ * rx_dmat; } ;
typedef  TYPE_4__ adapter_t ;
struct TYPE_22__ {size_t c_cpu; } ;
struct TYPE_24__ {int gen; int stop_thres; int /*<<< orphan*/  token; scalar_t__ size; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  qreclaim_task; int /*<<< orphan*/  qresume_task; int /*<<< orphan*/  sendq; int /*<<< orphan*/  entry_tag; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  sdesc; int /*<<< orphan*/  desc; TYPE_17__ txq_watchdog; TYPE_17__ txq_timer; int /*<<< orphan*/ * txq_ifq; int /*<<< orphan*/ * txq_mr; } ;
struct TYPE_21__ {int if_capenable; } ;
struct TYPE_20__ {int gen; scalar_t__ buf_size; scalar_t__ size; int /*<<< orphan*/  phys_addr; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  type; int /*<<< orphan*/  zone; int /*<<< orphan*/  entry_tag; int /*<<< orphan*/  desc_map; int /*<<< orphan*/  desc_tag; int /*<<< orphan*/  sdesc; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int EDOOFUS ; 
 int /*<<< orphan*/  EXT_JUMBO16 ; 
 int /*<<< orphan*/  EXT_JUMBO9 ; 
 int /*<<< orphan*/  EXT_JUMBOP ; 
 int /*<<< orphan*/  EXT_PACKET ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ MCLBYTES ; 
 scalar_t__ MJUM16BYTES ; 
 scalar_t__ MJUM9BYTES ; 
 scalar_t__ MJUMPAGESIZE ; 
 int /*<<< orphan*/  MTX_DEF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  RSPQ_NAME_LEN ; 
 int /*<<< orphan*/  SGE_CNTXT_CTRL ; 
 int /*<<< orphan*/  SGE_CNTXT_ETH ; 
 int /*<<< orphan*/  SGE_CNTXT_OFLD ; 
 int SGE_RXQ_PER_SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sge_qset*) ; 
 int TXQ_CTRL ; 
 size_t TXQ_ETH ; 
 int /*<<< orphan*/  FUNC3 (struct sge_qset*) ; 
 size_t TXQ_OFLD ; 
 scalar_t__ TX_MAX_SEGS ; 
 int /*<<< orphan*/  USE_GTS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_4__*,scalar_t__,int,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_17__*,int) ; 
 int /*<<< orphan*/  cxgb_txq_buf_ring_size ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC13 (struct sge_qset*,size_t) ; 
 int /*<<< orphan*/ * FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t mp_ncpus ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,TYPE_15__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,TYPE_13__*,scalar_t__) ; 
 int /*<<< orphan*/  restart_ctrlq ; 
 int /*<<< orphan*/  restart_offloadq ; 
 int /*<<< orphan*/  sge_txq_reclaim_handler ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,struct sge_qset*) ; 
 int FUNC24 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC25 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC26 (TYPE_4__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct sge_qset*,struct qset_params const*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int FUNC29 (TYPE_5__*) ; 
 int /*<<< orphan*/  zone_jumbo16 ; 
 int /*<<< orphan*/  zone_jumbo9 ; 
 int /*<<< orphan*/  zone_jumbop ; 
 int /*<<< orphan*/  zone_pack ; 

int
FUNC30(adapter_t *sc, u_int id, int nports, int irq_vec_idx,
		  const struct qset_params *p, int ntxq, struct port_info *pi)
{
	struct sge_qset *q = &sc->sge.qs[id];
	int i, ret = 0;

	FUNC1(&q->lock, q->namebuf, NULL, MTX_DEF);
	q->port = pi;
	q->adap = sc;

	if ((q->txq[TXQ_ETH].txq_mr = FUNC7(cxgb_txq_buf_ring_size,
	    M_DEVBUF, M_WAITOK, &q->lock)) == NULL) {
		FUNC10(sc->dev, "failed to allocate mbuf ring\n");
		goto err;
	}
	if ((q->txq[TXQ_ETH].txq_ifq = FUNC14(sizeof(struct ifaltq), M_DEVBUF,
	    M_NOWAIT | M_ZERO)) == NULL) {
		FUNC10(sc->dev, "failed to allocate ifq\n");
		goto err;
	}
	FUNC12(q->txq[TXQ_ETH].txq_ifq, pi->ifp);	
	FUNC8(&q->txq[TXQ_ETH].txq_timer, 1);
	FUNC8(&q->txq[TXQ_ETH].txq_watchdog, 1);
	q->txq[TXQ_ETH].txq_timer.c_cpu = id % mp_ncpus;
	q->txq[TXQ_ETH].txq_watchdog.c_cpu = id % mp_ncpus;

	FUNC13(q, id);
	q->idx = id;
	if ((ret = FUNC6(sc, p->fl_size, sizeof(struct rx_desc),
		    sizeof(struct rx_sw_desc), &q->fl[0].phys_addr,
		    &q->fl[0].desc, &q->fl[0].sdesc,
		    &q->fl[0].desc_tag, &q->fl[0].desc_map,
		    sc->rx_dmat, &q->fl[0].entry_tag)) != 0) {
		FUNC18("error %d from alloc ring fl0\n", ret);
		goto err;
	}

	if ((ret = FUNC6(sc, p->jumbo_size, sizeof(struct rx_desc),
		    sizeof(struct rx_sw_desc), &q->fl[1].phys_addr,
		    &q->fl[1].desc, &q->fl[1].sdesc,
		    &q->fl[1].desc_tag, &q->fl[1].desc_map,
		    sc->rx_jumbo_dmat, &q->fl[1].entry_tag)) != 0) {
		FUNC18("error %d from alloc ring fl1\n", ret);
		goto err;
	}

	if ((ret = FUNC6(sc, p->rspq_size, sizeof(struct rsp_desc), 0,
		    &q->rspq.phys_addr, &q->rspq.desc, NULL,
		    &q->rspq.desc_tag, &q->rspq.desc_map,
		    NULL, NULL)) != 0) {
		FUNC18("error %d from alloc ring rspq\n", ret);
		goto err;
	}

	FUNC22(q->rspq.lockbuf, RSPQ_NAME_LEN, "t3 rspq lock %d:%d",
	    FUNC9(sc->dev), irq_vec_idx);
	FUNC1(&q->rspq.lock, q->rspq.lockbuf, NULL, MTX_DEF);

	for (i = 0; i < ntxq; ++i) {
		size_t sz = i == TXQ_CTRL ? 0 : sizeof(struct tx_sw_desc);

		if ((ret = FUNC6(sc, p->txq_size[i],
			    sizeof(struct tx_desc), sz,
			    &q->txq[i].phys_addr, &q->txq[i].desc,
			    &q->txq[i].sdesc, &q->txq[i].desc_tag,
			    &q->txq[i].desc_map,
			    sc->tx_dmat, &q->txq[i].entry_tag)) != 0) {
			FUNC18("error %d from alloc ring tx %i\n", ret, i);
			goto err;
		}
		FUNC15(&q->txq[i].sendq, INT_MAX);
		q->txq[i].gen = 1;
		q->txq[i].size = p->txq_size[i];
	}

#ifdef TCP_OFFLOAD
	TASK_INIT(&q->txq[TXQ_OFLD].qresume_task, 0, restart_offloadq, q);
#endif
	FUNC2(&q->txq[TXQ_CTRL].qresume_task, 0, restart_ctrlq, q);
	FUNC2(&q->txq[TXQ_ETH].qreclaim_task, 0, sge_txq_reclaim_handler, q);
	FUNC2(&q->txq[TXQ_OFLD].qreclaim_task, 0, sge_txq_reclaim_handler, q);

	q->fl[0].gen = q->fl[1].gen = 1;
	q->fl[0].size = p->fl_size;
	q->fl[1].size = p->jumbo_size;

	q->rspq.gen = 1;
	q->rspq.cidx = 0;
	q->rspq.size = p->rspq_size;

	q->txq[TXQ_ETH].stop_thres = nports *
	    FUNC11(FUNC21(TX_MAX_SEGS + 1) + 3);

	q->fl[0].buf_size = MCLBYTES;
	q->fl[0].zone = zone_pack;
	q->fl[0].type = EXT_PACKET;

	if (p->jumbo_buf_size ==  MJUM16BYTES) {
		q->fl[1].zone = zone_jumbo16;
		q->fl[1].type = EXT_JUMBO16;
	} else if (p->jumbo_buf_size ==  MJUM9BYTES) {
		q->fl[1].zone = zone_jumbo9;
		q->fl[1].type = EXT_JUMBO9;		
	} else if (p->jumbo_buf_size ==  MJUMPAGESIZE) {
		q->fl[1].zone = zone_jumbop;
		q->fl[1].type = EXT_JUMBOP;
	} else {
		FUNC0(0, ("can't deal with jumbo_buf_size %d.", p->jumbo_buf_size));
		ret = EDOOFUS;
		goto err;
	}
	q->fl[1].buf_size = p->jumbo_buf_size;

	/* Allocate and setup the lro_ctrl structure */
	q->lro.enabled = !!(pi->ifp->if_capenable & IFCAP_LRO);
#if defined(INET6) || defined(INET)
	ret = tcp_lro_init(&q->lro.ctrl);
	if (ret) {
		printf("error %d from tcp_lro_init\n", ret);
		goto err;
	}
#endif
	q->lro.ctrl.ifp = pi->ifp;

	FUNC16(&sc->sge.reg_lock);
	ret = -FUNC26(sc, q->rspq.cntxt_id, irq_vec_idx,
				   q->rspq.phys_addr, q->rspq.size,
				   q->fl[0].buf_size, 1, 0);
	if (ret) {
		FUNC18("error %d from t3_sge_init_rspcntxt\n", ret);
		goto err_unlock;
	}

	for (i = 0; i < SGE_RXQ_PER_SET; ++i) {
		ret = -FUNC25(sc, q->fl[i].cntxt_id, 0,
					  q->fl[i].phys_addr, q->fl[i].size,
					  q->fl[i].buf_size, p->cong_thres, 1,
					  0);
		if (ret) {
			FUNC18("error %d from t3_sge_init_flcntxt for index i=%d\n", ret, i);
			goto err_unlock;
		}
	}

	ret = -FUNC24(sc, q->txq[TXQ_ETH].cntxt_id, USE_GTS,
				 SGE_CNTXT_ETH, id, q->txq[TXQ_ETH].phys_addr,
				 q->txq[TXQ_ETH].size, q->txq[TXQ_ETH].token,
				 1, 0);
	if (ret) {
		FUNC18("error %d from t3_sge_init_ecntxt\n", ret);
		goto err_unlock;
	}

	if (ntxq > 1) {
		ret = -FUNC24(sc, q->txq[TXQ_OFLD].cntxt_id,
					 USE_GTS, SGE_CNTXT_OFLD, id,
					 q->txq[TXQ_OFLD].phys_addr,
					 q->txq[TXQ_OFLD].size, 0, 1, 0);
		if (ret) {
			FUNC18("error %d from t3_sge_init_ecntxt\n", ret);
			goto err_unlock;
		}
	}

	if (ntxq > 2) {
		ret = -FUNC24(sc, q->txq[TXQ_CTRL].cntxt_id, 0,
					 SGE_CNTXT_CTRL, id,
					 q->txq[TXQ_CTRL].phys_addr,
					 q->txq[TXQ_CTRL].size,
					 q->txq[TXQ_CTRL].token, 1, 0);
		if (ret) {
			FUNC18("error %d from t3_sge_init_ecntxt\n", ret);
			goto err_unlock;
		}
	}

	FUNC17(&sc->sge.reg_lock);
	FUNC27(q, p);

	FUNC19(sc, &q->fl[0], q->fl[0].size);
	FUNC19(sc, &q->fl[1], q->fl[1].size);
	FUNC20(sc, &q->rspq, q->rspq.size - 1);

	FUNC28(sc, A_SG_GTS, FUNC5(q->rspq.cntxt_id) |
		     FUNC4(q->rspq.holdoff_tmr));

	return (0);

err_unlock:
	FUNC17(&sc->sge.reg_lock);
err:	
	FUNC3(q);
	FUNC23(sc, q);

	return (ret);
}