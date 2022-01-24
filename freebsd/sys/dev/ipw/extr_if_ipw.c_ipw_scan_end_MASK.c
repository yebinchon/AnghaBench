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
struct ipw_softc {int /*<<< orphan*/  flags; } ;
struct ieee80211com {struct ipw_softc* ic_softc; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPW_FLAG_SCANNING ; 
 int /*<<< orphan*/  FUNC0 (struct ipw_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_softc*) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211com *ic)
{
	struct ipw_softc *sc = ic->ic_softc;

	FUNC0(sc);
	sc->flags &= ~IPW_FLAG_SCANNING;
	FUNC1(sc);
}