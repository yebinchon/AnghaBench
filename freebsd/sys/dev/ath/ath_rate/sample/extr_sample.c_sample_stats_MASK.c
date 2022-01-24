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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int uint64_t ;
struct sample_node {int static_rix; int ratemask; int* current_rix; int* packets_since_switch; int* ticks_since_switch; int* last_sample_rix; int* current_sample_rix; int* packets_sent; int* packets_since_sample; int* sample_tt; TYPE_1__** stats; } ;
struct ieee80211_node {int /*<<< orphan*/  ni_macaddr; } ;
struct ath_softc {int /*<<< orphan*/ * sc_currates; } ;
struct TYPE_2__ {unsigned long long total_packets; unsigned long long packets_acked; int ewma_pct; scalar_t__ last_tx; int /*<<< orphan*/  average_tx_time; int /*<<< orphan*/  successive_failures; scalar_t__ tries; } ;
typedef  int /*<<< orphan*/  HAL_RATE_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_node*) ; 
 struct sample_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int NUM_PACKET_SIZE_BINS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/  const*,int) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 scalar_t__ ticks ; 

__attribute__((used)) static void
FUNC8(void *arg, struct ieee80211_node *ni)
{
	struct ath_softc *sc = arg;
	const HAL_RATE_TABLE *rt = sc->sc_currates;
	struct sample_node *sn = FUNC1(FUNC0(ni));
	uint64_t mask;
	int rix, y;

	FUNC7("\n[%s] refcnt %d static_rix (%d %s) ratemask 0x%jx\n",
	    FUNC5(ni->ni_macaddr), FUNC6(ni),
	    FUNC3(rt, sn->static_rix),
	    FUNC4(rt, sn->static_rix),
	    (uintmax_t)sn->ratemask);
	for (y = 0; y < NUM_PACKET_SIZE_BINS; y++) {
		FUNC7("[%4u] cur rix %d (%d %s) since switch: packets %d ticks %u\n",
		    FUNC2(y), sn->current_rix[y],
		    FUNC3(rt, sn->current_rix[y]),
		    FUNC4(rt, sn->current_rix[y]),
		    sn->packets_since_switch[y], sn->ticks_since_switch[y]);
		FUNC7("[%4u] last sample (%d %s) cur sample (%d %s) packets sent %d\n",
		    FUNC2(y),
		    FUNC3(rt, sn->last_sample_rix[y]),
		    FUNC4(rt, sn->last_sample_rix[y]),
		    FUNC3(rt, sn->current_sample_rix[y]),
		    FUNC4(rt, sn->current_sample_rix[y]),
		    sn->packets_sent[y]);
		FUNC7("[%4u] packets since sample %d sample tt %u\n",
		    FUNC2(y), sn->packets_since_sample[y],
		    sn->sample_tt[y]);
	}
	for (mask = sn->ratemask, rix = 0; mask != 0; mask >>= 1, rix++) {
		if ((mask & 1) == 0)
				continue;
		for (y = 0; y < NUM_PACKET_SIZE_BINS; y++) {
			if (sn->stats[y][rix].total_packets == 0)
				continue;
			FUNC7("[%2u %s:%4u] %8ju:%-8ju (%3d%%) (EWMA %3d.%1d%%) T %8ju F %4d avg %5u last %u\n",
			    FUNC3(rt, rix), FUNC4(rt, rix),
			    FUNC2(y),
			    (uintmax_t) sn->stats[y][rix].total_packets,
			    (uintmax_t) sn->stats[y][rix].packets_acked,
			    (int) ((sn->stats[y][rix].packets_acked * 100ULL) /
			     sn->stats[y][rix].total_packets),
			    sn->stats[y][rix].ewma_pct / 10,
			    sn->stats[y][rix].ewma_pct % 10,
			    (uintmax_t) sn->stats[y][rix].tries,
			    sn->stats[y][rix].successive_failures,
			    sn->stats[y][rix].average_tx_time,
			    ticks - sn->stats[y][rix].last_tx);
		}
	}
}