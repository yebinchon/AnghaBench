#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct vtnet_rxq_stats {int /*<<< orphan*/  vrxs_rescheduled; int /*<<< orphan*/  vrxs_csum_failed; int /*<<< orphan*/  vrxs_csum; int /*<<< orphan*/  vrxs_ierrors; int /*<<< orphan*/  vrxs_iqdrops; int /*<<< orphan*/  vrxs_ibytes; int /*<<< orphan*/  vrxs_ipackets; } ;
struct vtnet_rxq {int vtnrx_id; struct vtnet_rxq_stats vtnrx_stats; } ;
struct sysctl_oid_list {int dummy; } ;
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  namebuf ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,struct sysctl_oid_list*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 struct sysctl_oid_list* FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC4(struct sysctl_ctx_list *ctx,
    struct sysctl_oid_list *child, struct vtnet_rxq *rxq)
{
	struct sysctl_oid *node;
	struct sysctl_oid_list *list;
	struct vtnet_rxq_stats *stats;
	char namebuf[16];

	FUNC3(namebuf, sizeof(namebuf), "rxq%d", rxq->vtnrx_id);
	node = FUNC0(ctx, child, OID_AUTO, namebuf,
	    CTLFLAG_RD, NULL, "Receive Queue");
	list = FUNC2(node);

	stats = &rxq->vtnrx_stats;

	FUNC1(ctx, list, OID_AUTO, "ipackets", CTLFLAG_RD,
	    &stats->vrxs_ipackets, "Receive packets");
	FUNC1(ctx, list, OID_AUTO, "ibytes", CTLFLAG_RD,
	    &stats->vrxs_ibytes, "Receive bytes");
	FUNC1(ctx, list, OID_AUTO, "iqdrops", CTLFLAG_RD,
	    &stats->vrxs_iqdrops, "Receive drops");
	FUNC1(ctx, list, OID_AUTO, "ierrors", CTLFLAG_RD,
	    &stats->vrxs_ierrors, "Receive errors");
	FUNC1(ctx, list, OID_AUTO, "csum", CTLFLAG_RD,
	    &stats->vrxs_csum, "Receive checksum offloaded");
	FUNC1(ctx, list, OID_AUTO, "csum_failed", CTLFLAG_RD,
	    &stats->vrxs_csum_failed, "Receive checksum offload failed");
	FUNC1(ctx, list, OID_AUTO, "rescheduled", CTLFLAG_RD,
	    &stats->vrxs_rescheduled,
	    "Receive interrupt handler rescheduled");
}