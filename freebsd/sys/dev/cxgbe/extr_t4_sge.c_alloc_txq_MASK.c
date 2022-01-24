#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct vi_info {int /*<<< orphan*/  ctx; int /*<<< orphan*/  vfvld; int /*<<< orphan*/  vin; int /*<<< orphan*/  ifp; struct port_info* pi; } ;
struct tx_sdesc {int dummy; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sge_eq {int sidx; scalar_t__ abs_id; scalar_t__ cntxt_id; struct vi_info pidx; struct vi_info cidx; int /*<<< orphan*/  ba; } ;
struct sge_txq {int tc_idx; TYPE_4__* r; int /*<<< orphan*/  raw_wrs; int /*<<< orphan*/  txpkts1_pkts; int /*<<< orphan*/  txpkts0_pkts; int /*<<< orphan*/  txpkts1_wrs; int /*<<< orphan*/  txpkts0_wrs; int /*<<< orphan*/  txpkt_wrs; int /*<<< orphan*/  sgl_wrs; int /*<<< orphan*/  imm_wrs; int /*<<< orphan*/  tso_wrs; int /*<<< orphan*/  vlan_insertion; int /*<<< orphan*/  txcsum; int /*<<< orphan*/  sdesc; void* cpl_ctrl0; int /*<<< orphan*/  gl; int /*<<< orphan*/  ifp; int /*<<< orphan*/  tx_reclaim_task; struct sge_eq eq; } ;
struct port_info {int /*<<< orphan*/  tx_chan; struct adapter* adapter; } ;
struct TYPE_6__ {int spg_len; } ;
struct TYPE_7__ {TYPE_1__ sge; } ;
struct TYPE_8__ {scalar_t__ eq_base; } ;
struct adapter {int flags; TYPE_2__ params; int /*<<< orphan*/  pf; TYPE_3__ sge; int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_9__ {int /*<<< orphan*/  abdications; int /*<<< orphan*/  restarts; int /*<<< orphan*/  stalls; int /*<<< orphan*/  starts; int /*<<< orphan*/  drops; int /*<<< orphan*/  enqueues; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_TX_PKT ; 
 int /*<<< orphan*/  CPL_TX_PKT_XT ; 
 int CTLFLAG_RD ; 
 int CTLFLAG_RW ; 
 int CTLTYPE_INT ; 
 int EQ_ESIZE ; 
 int IS_VF ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  M_CXGBE ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,char*) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,struct vi_info*,int,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,scalar_t__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC8 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sge_eq*) ; 
 int /*<<< orphan*/  TX_SGL_SEGS ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct adapter*,struct vi_info*,struct sge_eq*) ; 
 int /*<<< orphan*/  can_resume_eth_tx ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  eth_tx ; 
 void* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (TYPE_4__**,int,struct sge_txq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,char*,int) ; 
 int /*<<< orphan*/  sysctl_tc ; 
 int /*<<< orphan*/  sysctl_uint16 ; 
 int /*<<< orphan*/  tx_reclaim ; 

__attribute__((used)) static int
FUNC23(struct vi_info *vi, struct sge_txq *txq, int idx,
    struct sysctl_oid *oid)
{
	int rc;
	struct port_info *pi = vi->pi;
	struct adapter *sc = pi->adapter;
	struct sge_eq *eq = &txq->eq;
	char name[16];
	struct sysctl_oid_list *children = FUNC8(oid);

	rc = FUNC19(&txq->r, eq->sidx, txq, eth_tx, can_resume_eth_tx,
	    M_CXGBE, M_WAITOK);
	if (rc != 0) {
		FUNC16(sc->dev, "failed to allocate mp_ring: %d\n", rc);
		return (rc);
	}

	rc = FUNC15(sc, vi, eq);
	if (rc != 0) {
		FUNC20(txq->r);
		txq->r = NULL;
		return (rc);
	}

	/* Can't fail after this point. */

	if (idx == 0)
		sc->sge.eq_base = eq->abs_id - eq->cntxt_id;
	else
		FUNC0(eq->cntxt_id + sc->sge.eq_base == eq->abs_id,
		    ("eq_base mismatch"));
	FUNC0(sc->sge.eq_base == 0 || sc->flags & IS_VF,
	    ("PF with non-zero eq_base"));

	FUNC9(&txq->tx_reclaim_task, 0, tx_reclaim, eq);
	txq->ifp = vi->ifp;
	txq->gl = FUNC21(TX_SGL_SEGS, M_WAITOK);
	if (sc->flags & IS_VF)
		txq->cpl_ctrl0 = FUNC17(FUNC11(CPL_TX_PKT_XT) |
		    FUNC10(pi->tx_chan));
	else
		txq->cpl_ctrl0 = FUNC17(FUNC11(CPL_TX_PKT) |
		    FUNC10(pi->tx_chan) | FUNC12(sc->pf) |
		    FUNC13(vi->vin) | FUNC14(vi->vfvld));
	txq->tc_idx = -1;
	txq->sdesc = FUNC18(eq->sidx * sizeof(struct tx_sdesc), M_CXGBE,
	    M_ZERO | M_WAITOK);

	FUNC22(name, sizeof(name), "%d", idx);
	oid = FUNC3(&vi->ctx, children, OID_AUTO, name, CTLFLAG_RD,
	    NULL, "tx queue");
	children = FUNC8(oid);

	FUNC5(&vi->ctx, children, OID_AUTO, "ba", CTLFLAG_RD,
	    &eq->ba, "bus address of descriptor ring");
	FUNC2(&vi->ctx, children, OID_AUTO, "dmalen", CTLFLAG_RD, NULL,
	    eq->sidx * EQ_ESIZE + sc->params.sge.spg_len,
	    "desc ring size in bytes");
	FUNC6(&vi->ctx, children, OID_AUTO, "abs_id", CTLFLAG_RD,
	    &eq->abs_id, 0, "absolute id of the queue");
	FUNC6(&vi->ctx, children, OID_AUTO, "cntxt_id", CTLFLAG_RD,
	    &eq->cntxt_id, 0, "SGE context id of the queue");
	FUNC4(&vi->ctx, children, OID_AUTO, "cidx",
	    CTLTYPE_INT | CTLFLAG_RD, &eq->cidx, 0, sysctl_uint16, "I",
	    "consumer index");
	FUNC4(&vi->ctx, children, OID_AUTO, "pidx",
	    CTLTYPE_INT | CTLFLAG_RD, &eq->pidx, 0, sysctl_uint16, "I",
	    "producer index");
	FUNC2(&vi->ctx, children, OID_AUTO, "sidx", CTLFLAG_RD, NULL,
	    eq->sidx, "status page index");

	FUNC4(&vi->ctx, children, OID_AUTO, "tc",
	    CTLTYPE_INT | CTLFLAG_RW, vi, idx, sysctl_tc, "I",
	    "traffic class (-1 means none)");

	FUNC7(&vi->ctx, children, OID_AUTO, "txcsum", CTLFLAG_RD,
	    &txq->txcsum, "# of times hardware assisted with checksum");
	FUNC7(&vi->ctx, children, OID_AUTO, "vlan_insertion",
	    CTLFLAG_RD, &txq->vlan_insertion,
	    "# of times hardware inserted 802.1Q tag");
	FUNC7(&vi->ctx, children, OID_AUTO, "tso_wrs", CTLFLAG_RD,
	    &txq->tso_wrs, "# of TSO work requests");
	FUNC7(&vi->ctx, children, OID_AUTO, "imm_wrs", CTLFLAG_RD,
	    &txq->imm_wrs, "# of work requests with immediate data");
	FUNC7(&vi->ctx, children, OID_AUTO, "sgl_wrs", CTLFLAG_RD,
	    &txq->sgl_wrs, "# of work requests with direct SGL");
	FUNC7(&vi->ctx, children, OID_AUTO, "txpkt_wrs", CTLFLAG_RD,
	    &txq->txpkt_wrs, "# of txpkt work requests (one pkt/WR)");
	FUNC7(&vi->ctx, children, OID_AUTO, "txpkts0_wrs",
	    CTLFLAG_RD, &txq->txpkts0_wrs,
	    "# of txpkts (type 0) work requests");
	FUNC7(&vi->ctx, children, OID_AUTO, "txpkts1_wrs",
	    CTLFLAG_RD, &txq->txpkts1_wrs,
	    "# of txpkts (type 1) work requests");
	FUNC7(&vi->ctx, children, OID_AUTO, "txpkts0_pkts",
	    CTLFLAG_RD, &txq->txpkts0_pkts,
	    "# of frames tx'd using type0 txpkts work requests");
	FUNC7(&vi->ctx, children, OID_AUTO, "txpkts1_pkts",
	    CTLFLAG_RD, &txq->txpkts1_pkts,
	    "# of frames tx'd using type1 txpkts work requests");
	FUNC7(&vi->ctx, children, OID_AUTO, "raw_wrs", CTLFLAG_RD,
	    &txq->raw_wrs, "# of raw work requests (non-packets)");

	FUNC1(&vi->ctx, children, OID_AUTO, "r_enqueues",
	    CTLFLAG_RD, &txq->r->enqueues,
	    "# of enqueues to the mp_ring for this queue");
	FUNC1(&vi->ctx, children, OID_AUTO, "r_drops",
	    CTLFLAG_RD, &txq->r->drops,
	    "# of drops in the mp_ring for this queue");
	FUNC1(&vi->ctx, children, OID_AUTO, "r_starts",
	    CTLFLAG_RD, &txq->r->starts,
	    "# of normal consumer starts in the mp_ring for this queue");
	FUNC1(&vi->ctx, children, OID_AUTO, "r_stalls",
	    CTLFLAG_RD, &txq->r->stalls,
	    "# of consumer stalls in the mp_ring for this queue");
	FUNC1(&vi->ctx, children, OID_AUTO, "r_restarts",
	    CTLFLAG_RD, &txq->r->restarts,
	    "# of consumer restarts in the mp_ring for this queue");
	FUNC1(&vi->ctx, children, OID_AUTO, "r_abdications",
	    CTLFLAG_RD, &txq->r->abdications,
	    "# of consumer abdications in the mp_ring for this queue");

	return (0);
}