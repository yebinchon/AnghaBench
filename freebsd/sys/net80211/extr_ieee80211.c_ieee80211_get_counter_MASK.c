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
typedef  int /*<<< orphan*/  uint64_t ;
struct ifnet {struct ieee80211vap* if_softc; } ;
struct ieee80211vap {struct ieee80211com* iv_ic; } ;
struct ieee80211com {int /*<<< orphan*/  ic_ierrors; int /*<<< orphan*/  ic_oerrors; } ;
typedef  int ift_counter ;

/* Variables and functions */
#define  IFCOUNTER_IERRORS 129 
#define  IFCOUNTER_OERRORS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int) ; 

__attribute__((used)) static uint64_t
FUNC2(struct ifnet *ifp, ift_counter cnt)
{
	struct ieee80211vap *vap = ifp->if_softc;
	struct ieee80211com *ic = vap->iv_ic;
	uint64_t rv;

	rv = FUNC1(ifp, cnt);
	switch (cnt) {
	case IFCOUNTER_OERRORS:
		rv += FUNC0(ic->ic_oerrors);
		break;
	case IFCOUNTER_IERRORS:
		rv += FUNC0(ic->ic_ierrors);
		break;
	default:
		break;
	}

	return (rv);
}