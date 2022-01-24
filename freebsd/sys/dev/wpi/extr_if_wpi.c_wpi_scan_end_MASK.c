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
struct ieee80211vap {scalar_t__ iv_state; } ;
struct ieee80211com {int /*<<< orphan*/  ic_vaps; struct wpi_softc* ic_softc; } ;

/* Variables and functions */
 scalar_t__ IEEE80211_S_RUN ; 
 struct ieee80211vap* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WPI_LED_LINK ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ieee80211com *ic)
{
	struct wpi_softc *sc = ic->ic_softc;
	struct ieee80211vap *vap = FUNC0(&ic->ic_vaps);

	if (vap->iv_state == IEEE80211_S_RUN)
		FUNC1(sc, WPI_LED_LINK, 0, 1);
}