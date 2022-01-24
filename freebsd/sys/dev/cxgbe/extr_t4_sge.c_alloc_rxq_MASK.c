#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vi_info {int /*<<< orphan*/  ctx; TYPE_4__* ifp; TYPE_2__* pi; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  lro_flushed; int /*<<< orphan*/  lro_queued; TYPE_4__* ifp; } ;
struct TYPE_11__ {scalar_t__ abs_id; scalar_t__ cntxt_id; int /*<<< orphan*/  flags; } ;
struct sge_rxq {int /*<<< orphan*/  fl; int /*<<< orphan*/  vlan_extraction; int /*<<< orphan*/  rxcsum; TYPE_3__ lro; TYPE_5__ iq; TYPE_4__* ifp; } ;
struct TYPE_7__ {scalar_t__ iq_base; } ;
struct adapter {int flags; TYPE_1__ sge; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_10__ {int if_capenable; } ;
struct TYPE_8__ {struct adapter* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int IFCAP_HWRXTSTMP ; 
 int IFCAP_LRO ; 
 int /*<<< orphan*/  IQ_LRO_ENABLED ; 
 int /*<<< orphan*/  IQ_RX_TIMESTAMP ; 
 int IS_VF ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC7 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,int /*<<< orphan*/ *,struct sysctl_oid*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct sysctl_oid*,TYPE_5__*) ; 
 int FUNC10 (struct vi_info*,TYPE_5__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cong_drop ; 
 int /*<<< orphan*/  lro_entries ; 
 int /*<<< orphan*/  lro_mbufs ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int FUNC13 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC15(struct vi_info *vi, struct sge_rxq *rxq, int intr_idx, int idx,
    struct sysctl_oid *oid)
{
	int rc;
	struct adapter *sc = vi->pi->adapter;
	struct sysctl_oid_list *children;
	char name[16];

	rc = FUNC10(vi, &rxq->iq, &rxq->fl, intr_idx,
	    FUNC14(vi->pi, cong_drop));
	if (rc != 0)
		return (rc);

	if (idx == 0)
		sc->sge.iq_base = rxq->iq.abs_id - rxq->iq.cntxt_id;
	else
		FUNC2(rxq->iq.cntxt_id + sc->sge.iq_base == rxq->iq.abs_id,
		    ("iq_base mismatch"));
	FUNC2(sc->sge.iq_base == 0 || sc->flags & IS_VF,
	    ("PF with non-zero iq_base"));

	/*
	 * The freelist is just barely above the starvation threshold right now,
	 * fill it up a bit more.
	 */
	FUNC0(&rxq->fl);
	FUNC11(sc, &rxq->fl, 128);
	FUNC1(&rxq->fl);

#if defined(INET) || defined(INET6)
	rc = tcp_lro_init_args(&rxq->lro, vi->ifp, lro_entries, lro_mbufs);
	if (rc != 0)
		return (rc);
	MPASS(rxq->lro.ifp == vi->ifp);	/* also indicates LRO init'ed */

	if (vi->ifp->if_capenable & IFCAP_LRO)
		rxq->iq.flags |= IQ_LRO_ENABLED;
#endif
	if (vi->ifp->if_capenable & IFCAP_HWRXTSTMP)
		rxq->iq.flags |= IQ_RX_TIMESTAMP;
	rxq->ifp = vi->ifp;

	children = FUNC7(oid);

	FUNC12(name, sizeof(name), "%d", idx);
	oid = FUNC4(&vi->ctx, children, OID_AUTO, name, CTLFLAG_RD,
	    NULL, "rx queue");
	children = FUNC7(oid);

	FUNC9(&vi->ctx, oid, &rxq->iq);
#if defined(INET) || defined(INET6)
	SYSCTL_ADD_U64(&vi->ctx, children, OID_AUTO, "lro_queued", CTLFLAG_RD,
	    &rxq->lro.lro_queued, 0, NULL);
	SYSCTL_ADD_U64(&vi->ctx, children, OID_AUTO, "lro_flushed", CTLFLAG_RD,
	    &rxq->lro.lro_flushed, 0, NULL);
#endif
	FUNC6(&vi->ctx, children, OID_AUTO, "rxcsum", CTLFLAG_RD,
	    &rxq->rxcsum, "# of times hardware assisted with checksum");
	FUNC6(&vi->ctx, children, OID_AUTO, "vlan_extraction",
	    CTLFLAG_RD, &rxq->vlan_extraction,
	    "# of times hardware extracted 802.1Q tag");

	FUNC8(sc, &vi->ctx, oid, &rxq->fl);

	return (rc);
}