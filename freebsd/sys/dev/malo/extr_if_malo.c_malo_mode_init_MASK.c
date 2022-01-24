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
struct malo_softc {struct malo_hal* malo_mh; struct ieee80211com malo_ic; } ;
struct malo_hal {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct malo_hal*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct malo_softc*) ; 

__attribute__((used)) static int
FUNC2(struct malo_softc *sc)
{
	struct ieee80211com *ic = &sc->malo_ic;
	struct malo_hal *mh = sc->malo_mh;

	FUNC0(mh, ic->ic_promisc > 0);
	FUNC1(sc);

	return ENXIO;
}