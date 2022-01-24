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
struct rm_priotracker {int dummy; } ;
struct TYPE_2__ {int len; struct ifnet* rcvif; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_1__ m_pkthdr; } ;
struct ifnet {size_t if_index; int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int IFCAP_HWSTATS ; 
 int /*<<< orphan*/  IFCOUNTER_IBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 struct ifnet** hn_vfmap ; 
 int /*<<< orphan*/  hn_vfmap_lock ; 
 size_t hn_vfmap_size ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct rm_priotracker*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC6(struct ifnet *vf_ifp, struct mbuf *m)
{
	struct rm_priotracker pt;
	struct ifnet *hn_ifp = NULL;
	struct mbuf *mn;

	/*
	 * XXX racy, if hn(4) ever detached.
	 */
	FUNC3(&hn_vfmap_lock, &pt);
	if (vf_ifp->if_index < hn_vfmap_size)
		hn_ifp = hn_vfmap[vf_ifp->if_index];
	FUNC4(&hn_vfmap_lock, &pt);

	if (hn_ifp != NULL) {
		for (mn = m; mn != NULL; mn = mn->m_nextpkt) {
			/*
			 * Allow tapping on the VF.
			 */
			FUNC0(vf_ifp, mn);

			/*
			 * Update VF stats.
			 */
			if ((vf_ifp->if_capenable & IFCAP_HWSTATS) == 0) {
				FUNC1(vf_ifp, IFCOUNTER_IBYTES,
				    mn->m_pkthdr.len);
			}
			/*
			 * XXX IFCOUNTER_IMCAST
			 * This stat updating is kinda invasive, since it
			 * requires two checks on the mbuf: the length check
			 * and the ethernet header check.  As of this write,
			 * all multicast packets go directly to hn(4), which
			 * makes imcast stat updating in the VF a try in vian.
			 */

			/*
			 * Fix up rcvif and increase hn(4)'s ipackets.
			 */
			mn->m_pkthdr.rcvif = hn_ifp;
			FUNC1(hn_ifp, IFCOUNTER_IPACKETS, 1);
		}
		/*
		 * Go through hn(4)'s if_input.
		 */
		hn_ifp->if_input(hn_ifp, m);
	} else {
		/*
		 * In the middle of the transition; free this
		 * mbuf chain.
		 */
		while (m != NULL) {
			mn = m->m_nextpkt;
			m->m_nextpkt = NULL;
			FUNC2(m);
			m = mn;
		}
	}
}