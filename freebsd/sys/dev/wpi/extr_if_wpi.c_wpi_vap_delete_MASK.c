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
struct wpi_buf {int /*<<< orphan*/ * m; } ;
struct wpi_vap {struct wpi_buf wv_bcbuf; } ;
struct ieee80211vap {int iv_opmode; } ;
typedef  enum ieee80211_opmode { ____Placeholder_ieee80211_opmode } ieee80211_opmode ;

/* Variables and functions */
 int IEEE80211_M_HOSTAP ; 
 int IEEE80211_M_IBSS ; 
 int /*<<< orphan*/  M_80211_VAP ; 
 struct wpi_vap* FUNC0 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC1 (struct wpi_vap*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpi_vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee80211vap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ieee80211vap *vap)
{
	struct wpi_vap *wvp = FUNC0(vap);
	struct wpi_buf *bcn = &wvp->wv_bcbuf;
	enum ieee80211_opmode opmode = vap->iv_opmode;

	FUNC3(vap);
	FUNC4(vap);

	if (opmode == IEEE80211_M_IBSS || opmode == IEEE80211_M_HOSTAP) {
		if (bcn->m != NULL)
			FUNC5(bcn->m);

		FUNC1(wvp);
	}

	FUNC2(wvp, M_80211_VAP);
}