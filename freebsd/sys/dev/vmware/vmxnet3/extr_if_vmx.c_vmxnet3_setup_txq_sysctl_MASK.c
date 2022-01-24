#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vmxnet3_txqueue {int vxtxq_id; struct sysctl_oid_list* vxtxq_sysctl; TYPE_1__* vxtxq_ts; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct UPT1_TxStats {int /*<<< orphan*/  discard; int /*<<< orphan*/  error; int /*<<< orphan*/  mcast_bytes; int /*<<< orphan*/  mcast_packets; int /*<<< orphan*/  ucast_bytes; int /*<<< orphan*/  ucast_packets; int /*<<< orphan*/  TSO_bytes; int /*<<< orphan*/  TSO_packets; } ;
typedef  int /*<<< orphan*/  namebuf ;
struct TYPE_2__ {struct UPT1_TxStats stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct vmxnet3_txqueue *txq,
    struct sysctl_ctx_list *ctx, struct sysctl_oid_list *child)
{
	struct sysctl_oid *node, *txsnode;
	struct sysctl_oid_list *list, *txslist;
	struct UPT1_TxStats *txstats;
	char namebuf[16];

	txstats = &txq->vxtxq_ts->stats;

	FUNC3(namebuf, sizeof(namebuf), "txq%d", txq->vxtxq_id);
	node = FUNC0(ctx, child, OID_AUTO, namebuf, CTLFLAG_RD,
	    NULL, "Transmit Queue");
	txq->vxtxq_sysctl = list = FUNC2(node);

	/*
	 * Add statistics reported by the host. These are updated by the
	 * iflib txq timer on txq 0.
	 */
	txsnode = FUNC0(ctx, list, OID_AUTO, "hstats", CTLFLAG_RD,
	    NULL, "Host Statistics");
	txslist = FUNC2(txsnode);
	FUNC1(ctx, txslist, OID_AUTO, "tso_packets", CTLFLAG_RD,
	    &txstats->TSO_packets, "TSO packets");
	FUNC1(ctx, txslist, OID_AUTO, "tso_bytes", CTLFLAG_RD,
	    &txstats->TSO_bytes, "TSO bytes");
	FUNC1(ctx, txslist, OID_AUTO, "ucast_packets", CTLFLAG_RD,
	    &txstats->ucast_packets, "Unicast packets");
	FUNC1(ctx, txslist, OID_AUTO, "unicast_bytes", CTLFLAG_RD,
	    &txstats->ucast_bytes, "Unicast bytes");
	FUNC1(ctx, txslist, OID_AUTO, "mcast_packets", CTLFLAG_RD,
	    &txstats->mcast_packets, "Multicast packets");
	FUNC1(ctx, txslist, OID_AUTO, "mcast_bytes", CTLFLAG_RD,
	    &txstats->mcast_bytes, "Multicast bytes");
	FUNC1(ctx, txslist, OID_AUTO, "error", CTLFLAG_RD,
	    &txstats->error, "Errors");
	FUNC1(ctx, txslist, OID_AUTO, "discard", CTLFLAG_RD,
	    &txstats->discard, "Discards");
}