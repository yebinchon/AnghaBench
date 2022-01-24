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
typedef  int /*<<< orphan*/  uint32_t ;
struct rt2560_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_promisc; struct rt2560_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rt2560_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RT2560_DROP_NOT_TO_ME ; 
 int /*<<< orphan*/  RT2560_RXCSR0 ; 

__attribute__((used)) static void
FUNC3(struct ieee80211com *ic)
{
	struct rt2560_softc *sc = ic->ic_softc;
	uint32_t tmp;

	tmp = FUNC1(sc, RT2560_RXCSR0);

	tmp &= ~RT2560_DROP_NOT_TO_ME;
	if (ic->ic_promisc == 0)
		tmp |= RT2560_DROP_NOT_TO_ME;

	FUNC2(sc, RT2560_RXCSR0, tmp);

	FUNC0(sc, "%s promiscuous mode\n",
	    (ic->ic_promisc > 0) ?  "entering" : "leaving");
}