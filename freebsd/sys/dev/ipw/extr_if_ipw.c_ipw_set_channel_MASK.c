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
struct ipw_softc {int dummy; } ;
struct ieee80211com {scalar_t__ ic_opmode; int /*<<< orphan*/  ic_curchan; struct ipw_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_M_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211com *ic)
{
	struct ipw_softc *sc = ic->ic_softc;

	FUNC0(sc);
	if (ic->ic_opmode == IEEE80211_M_MONITOR) {
		FUNC2(sc);
		FUNC4(sc, ic->ic_curchan);
		FUNC3(sc);
	}
	FUNC1(sc);
}