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
struct TYPE_2__ {int /*<<< orphan*/  ic_vaps; } ;
struct iwm_softc {TYPE_1__ sc_ic; } ;
struct ieee80211vap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211vap*) ; 
 struct ieee80211vap* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iwm_softc*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct iwm_softc*) ; 

int
FUNC4(struct iwm_softc *sc)
{
	struct ieee80211vap *vap = FUNC1(&sc->sc_ic.ic_vaps);
	int ret;

	ret = FUNC3(sc);
	if (ret)
		return ret;

	if (vap != NULL)
		return FUNC2(sc, FUNC0(vap));

	return 0;
}