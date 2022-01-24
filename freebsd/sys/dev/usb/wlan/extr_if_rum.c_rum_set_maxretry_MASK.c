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
struct rum_vap {int /*<<< orphan*/  maxretry; } ;
struct rum_softc {int dummy; } ;
struct ieee80211vap {struct ieee80211_node* iv_bss; } ;
struct ieee80211_txparam {int /*<<< orphan*/  maxretry; } ;
struct ieee80211_node {struct ieee80211_txparam* ni_txparms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int RT2573_LONG_RETRY_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int RT2573_SHORT_RETRY_MASK ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR4 ; 
 struct rum_vap* FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct rum_softc*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(struct rum_softc *sc, struct ieee80211vap *vap)
{
	struct ieee80211_node *ni = vap->iv_bss;
	const struct ieee80211_txparam *tp = ni->ni_txparms;
	struct rum_vap *rvp = FUNC3(vap);

	rvp->maxretry = FUNC0(tp->maxretry, 0xf);

	FUNC4(sc, RT2573_TXRX_CSR4, FUNC2(rvp->maxretry) |
	    FUNC1(rvp->maxretry),
	    RT2573_SHORT_RETRY_MASK | RT2573_LONG_RETRY_MASK);
}