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
typedef  int uint32_t ;
struct ieee80211com {int dummy; } ;
struct otus_softc {struct ieee80211com sc_ic; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_MAC_REG_SLOT_TIME ; 
 int FUNC0 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC1 (struct otus_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct otus_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct otus_softc*) ; 

__attribute__((used)) static void
FUNC4(struct otus_softc *sc)
{
	struct ieee80211com *ic = &sc->sc_ic;
	uint32_t slottime;

	FUNC1(sc);

	slottime = FUNC0(ic);
	FUNC2(sc, AR_MAC_REG_SLOT_TIME, slottime << 10);
	(void)FUNC3(sc);
}