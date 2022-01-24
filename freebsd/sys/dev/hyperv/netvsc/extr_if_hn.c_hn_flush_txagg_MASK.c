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
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct hn_txdesc {struct mbuf* m; } ;
struct hn_tx_ring {int hn_stat_pkts; int /*<<< orphan*/ * hn_agg_prevpkt; scalar_t__ hn_agg_pktleft; scalar_t__ hn_agg_szleft; struct hn_txdesc* hn_agg_txd; int /*<<< orphan*/  hn_flush_failed; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (struct ifnet*,struct hn_tx_ring*,struct hn_txdesc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static __inline int
FUNC5(struct ifnet *ifp, struct hn_tx_ring *txr)
{
	struct hn_txdesc *txd;
	struct mbuf *m;
	int error, pkts;

	txd = txr->hn_agg_txd;
	FUNC0(txd != NULL, ("no aggregate txdesc"));

	/*
	 * Since hn_txpkt() will reset this temporary stat, save
	 * it now, so that oerrors can be updated properly, if
	 * hn_txpkt() ever fails.
	 */
	pkts = txr->hn_stat_pkts;

	/*
	 * Since txd's mbuf will _not_ be freed upon hn_txpkt()
	 * failure, save it for later freeing, if hn_txpkt() ever
	 * fails.
	 */
	m = txd->m;
	error = FUNC2(ifp, txr, txd);
	if (FUNC1(error)) {
		/* txd is freed, but m is not. */
		FUNC4(m);

		txr->hn_flush_failed++;
		FUNC3(ifp, IFCOUNTER_OERRORS, pkts);
	}

	/* Reset all aggregation states. */
	txr->hn_agg_txd = NULL;
	txr->hn_agg_szleft = 0;
	txr->hn_agg_pktleft = 0;
	txr->hn_agg_prevpkt = NULL;

	return (error);
}