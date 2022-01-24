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
struct wpi_softc {int dummy; } ;
struct ieee80211vap {int dummy; } ;
struct ieee80211com {scalar_t__ ic_nrunning; int /*<<< orphan*/  ic_vaps; struct wpi_softc* ic_softc; } ;

/* Variables and functions */
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211com*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211com*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 scalar_t__ FUNC4 (struct wpi_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpi_softc*) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211com *ic)
{
	struct wpi_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);

	if (ic->ic_nrunning > 0) {
		if (FUNC4(sc) == 0) {
			FUNC1(ic, 1);
			FUNC2(ic);
		} else {
			FUNC1(ic, 0);
			FUNC3(vap);
		}
	} else {
		FUNC1(ic, 0);
		FUNC5(sc);
	}
}