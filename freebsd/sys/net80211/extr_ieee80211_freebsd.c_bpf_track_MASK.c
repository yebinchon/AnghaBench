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
struct ifnet {scalar_t__ if_init; struct ieee80211vap* if_softc; } ;
struct ieee80211vap {scalar_t__ iv_opmode; TYPE_1__* iv_ic; int /*<<< orphan*/  iv_rawbpf; } ;
struct TYPE_2__ {int /*<<< orphan*/  ic_montaps; } ;

/* Variables and functions */
 int DLT_IEEE802_11_RADIO ; 
 int /*<<< orphan*/  IEEE80211_FEXT_BPF ; 
 scalar_t__ IEEE80211_M_MONITOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ieee80211_init ; 
 int /*<<< orphan*/  FUNC3 (struct ieee80211vap*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void *arg, struct ifnet *ifp, int dlt, int attach)
{
	/* NB: identify vap's by if_init */
	if (dlt == DLT_IEEE802_11_RADIO &&
	    ifp->if_init == ieee80211_init) {
		struct ieee80211vap *vap = ifp->if_softc;
		/*
		 * Track bpf radiotap listener state.  We mark the vap
		 * to indicate if any listener is present and the com
		 * to indicate if any listener exists on any associated
		 * vap.  This flag is used by drivers to prepare radiotap
		 * state only when needed.
		 */
		if (attach) {
			FUNC3(vap, IEEE80211_FEXT_BPF);
			if (vap->iv_opmode == IEEE80211_M_MONITOR)
				FUNC0(&vap->iv_ic->ic_montaps, 1);
		} else if (!FUNC2(vap->iv_rawbpf)) {
			FUNC3(vap, -IEEE80211_FEXT_BPF);
			if (vap->iv_opmode == IEEE80211_M_MONITOR)
				FUNC1(&vap->iv_ic->ic_montaps, 1);
		}
	}
}