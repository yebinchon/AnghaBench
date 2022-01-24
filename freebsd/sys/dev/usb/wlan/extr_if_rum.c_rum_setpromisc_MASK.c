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
struct ieee80211com {scalar_t__ ic_promisc; } ;
struct rum_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  RT2573_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  RT2573_TXRX_CSR0 ; 
 int /*<<< orphan*/  FUNC1 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rum_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct rum_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;

	if (ic->ic_promisc == 0)
		FUNC2(sc, RT2573_TXRX_CSR0, RT2573_DROP_NOT_TO_ME);
	else
		FUNC1(sc, RT2573_TXRX_CSR0, RT2573_DROP_NOT_TO_ME);

	FUNC0("%s promiscuous mode\n", ic->ic_promisc > 0 ?
	    "entering" : "leaving");
}