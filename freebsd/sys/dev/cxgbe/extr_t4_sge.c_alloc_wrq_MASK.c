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
struct sysctl_ctx_list {int dummy; } ;
struct vi_info {struct sysctl_ctx_list ctx; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct TYPE_6__ {int sidx; int /*<<< orphan*/  pidx; int /*<<< orphan*/  cidx; int /*<<< orphan*/  cntxt_id; int /*<<< orphan*/  ba; } ;
struct sge_wrq {int /*<<< orphan*/  tx_wrs_ss; int /*<<< orphan*/  tx_wrs_copied; int /*<<< orphan*/  tx_wrs_direct; TYPE_3__ eq; scalar_t__ ndesc_needed; scalar_t__ nwr_pending; int /*<<< orphan*/  wr_list; int /*<<< orphan*/  incomplete_wrs; int /*<<< orphan*/  wrq_tx_task; struct adapter* adapter; } ;
struct TYPE_4__ {int spg_len; } ;
struct TYPE_5__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; struct sysctl_ctx_list ctx; } ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int EQ_ESIZE ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC6 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sge_wrq*) ; 
 int FUNC9 (struct adapter*,struct vi_info*,TYPE_3__*) ; 
 int /*<<< orphan*/  sysctl_uint16 ; 
 int /*<<< orphan*/  wrq_tx_drain ; 

__attribute__((used)) static int
FUNC10(struct adapter *sc, struct vi_info *vi, struct sge_wrq *wrq,
    struct sysctl_oid *oid)
{
	int rc;
	struct sysctl_ctx_list *ctx = vi ? &vi->ctx : &sc->ctx;
	struct sysctl_oid_list *children = FUNC6(oid);

	rc = FUNC9(sc, vi, &wrq->eq);
	if (rc)
		return (rc);

	wrq->adapter = sc;
	FUNC8(&wrq->wrq_tx_task, 0, wrq_tx_drain, wrq);
	FUNC7(&wrq->incomplete_wrs);
	FUNC0(&wrq->wr_list);
	wrq->nwr_pending = 0;
	wrq->ndesc_needed = 0;

	FUNC3(ctx, children, OID_AUTO, "ba", CTLFLAG_RD,
	    &wrq->eq.ba, "bus address of descriptor ring");
	FUNC1(ctx, children, OID_AUTO, "dmalen", CTLFLAG_RD, NULL,
	    wrq->eq.sidx * EQ_ESIZE + sc->params.sge.spg_len,
	    "desc ring size in bytes");
	FUNC4(ctx, children, OID_AUTO, "cntxt_id", CTLFLAG_RD,
	    &wrq->eq.cntxt_id, 0, "SGE context id of the queue");
	FUNC2(ctx, children, OID_AUTO, "cidx",
	    CTLTYPE_INT | CTLFLAG_RD, &wrq->eq.cidx, 0, sysctl_uint16, "I",
	    "consumer index");
	FUNC2(ctx, children, OID_AUTO, "pidx",
	    CTLTYPE_INT | CTLFLAG_RD, &wrq->eq.pidx, 0, sysctl_uint16, "I",
	    "producer index");
	FUNC1(ctx, children, OID_AUTO, "sidx", CTLFLAG_RD, NULL,
	    wrq->eq.sidx, "status page index");
	FUNC5(ctx, children, OID_AUTO, "tx_wrs_direct", CTLFLAG_RD,
	    &wrq->tx_wrs_direct, "# of work requests (direct)");
	FUNC5(ctx, children, OID_AUTO, "tx_wrs_copied", CTLFLAG_RD,
	    &wrq->tx_wrs_copied, "# of work requests (copied)");
	FUNC5(ctx, children, OID_AUTO, "tx_wrs_sspace", CTLFLAG_RD,
	    &wrq->tx_wrs_ss, "# of work requests (copied from scratch space)");

	return (rc);
}