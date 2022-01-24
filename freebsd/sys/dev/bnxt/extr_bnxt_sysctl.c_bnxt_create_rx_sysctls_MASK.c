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
struct sysctl_oid {int dummy; } ;
struct ctx_hw_stats {int /*<<< orphan*/  tpa_aborts; int /*<<< orphan*/  tpa_events; int /*<<< orphan*/  tpa_bytes; int /*<<< orphan*/  tpa_pkts; int /*<<< orphan*/  rx_bcast_bytes; int /*<<< orphan*/  rx_mcast_bytes; int /*<<< orphan*/  rx_ucast_bytes; int /*<<< orphan*/  rx_drop_pkts; int /*<<< orphan*/  rx_discard_pkts; int /*<<< orphan*/  rx_bcast_pkts; int /*<<< orphan*/  rx_mcast_pkts; int /*<<< orphan*/  rx_ucast_pkts; } ;
struct TYPE_2__ {scalar_t__ idi_vaddr; } ;
struct bnxt_softc {int /*<<< orphan*/  hw_stats; struct sysctl_oid* hw_stats_oid; TYPE_1__ rx_stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int ENOMEM ; 
 int /*<<< orphan*/  OID_AUTO ; 
 struct sysctl_oid* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

int
FUNC4(struct bnxt_softc *softc, int rxr)
{
	struct sysctl_oid *oid;
	struct ctx_hw_stats *rx_stats = (void *)softc->rx_stats.idi_vaddr;
	char	name[32];
	char	desc[64];

	FUNC3(name, "rxq%d", rxr);
	FUNC3(desc, "receive queue %d", rxr);
	oid = FUNC0(&softc->hw_stats,
	    FUNC2(softc->hw_stats_oid), OID_AUTO, name, CTLFLAG_RD, 0,
	    desc);
	if (!oid)
		return ENOMEM;

	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "ucast_pkts", CTLFLAG_RD, &rx_stats[rxr].rx_ucast_pkts,
	    "unicast packets received");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "mcast_pkts", CTLFLAG_RD, &rx_stats[rxr].rx_mcast_pkts,
	    "multicast packets received");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "bcast_pkts", CTLFLAG_RD, &rx_stats[rxr].rx_bcast_pkts,
	    "broadcast packets received");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "discard_pkts", CTLFLAG_RD,
	    &rx_stats[rxr].rx_discard_pkts, "discarded receive packets");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "drop_pkts", CTLFLAG_RD, &rx_stats[rxr].rx_drop_pkts,
	    "dropped receive packets");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "ucast_bytes", CTLFLAG_RD, &rx_stats[rxr].rx_ucast_bytes,
	    "unicast bytes received");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "mcast_bytes", CTLFLAG_RD, &rx_stats[rxr].rx_mcast_bytes,
	    "multicast bytes received");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "bcast_bytes", CTLFLAG_RD, &rx_stats[rxr].rx_bcast_bytes,
	    "broadcast bytes received");

	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "tpa_pkts", CTLFLAG_RD, &rx_stats[rxr].tpa_pkts,
	    "TPA packets");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "tpa_bytes", CTLFLAG_RD, &rx_stats[rxr].tpa_bytes,
	    "TPA bytes");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "tpa_events", CTLFLAG_RD, &rx_stats[rxr].tpa_events,
	    "TPA events");
	FUNC1(&softc->hw_stats, FUNC2(oid), OID_AUTO,
	    "tpa_aborts", CTLFLAG_RD, &rx_stats[rxr].tpa_aborts,
	    "TPA aborts");

	return 0;
}