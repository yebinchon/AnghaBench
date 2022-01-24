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
struct ieee80211com {int dummy; } ;
struct ieee80211_rx_stats {int r_flags; int c_nf; int c_rssi; } ;

/* Variables and functions */
 int IEEE80211_R_NF ; 
 int IEEE80211_R_RSSI ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct ieee80211_rx_stats*) ; 
 int FUNC1 (struct ieee80211com*,struct mbuf*) ; 

int
FUNC2(struct ieee80211com *ic, struct mbuf *m, int rssi, int nf)
{
	struct ieee80211_rx_stats rx;

	rx.r_flags = IEEE80211_R_NF | IEEE80211_R_RSSI;
	rx.c_nf = nf;
	rx.c_rssi = rssi;

	if (!FUNC0(m, &rx))
		return (-1);

	return FUNC1(ic, m);
}