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
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_ic; struct ifnet* iv_ifp; } ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_mesh_route {int /*<<< orphan*/  rt_dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 struct ieee80211_node* FUNC1 (struct ieee80211vap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211vap*,struct mbuf*,struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC5(struct ieee80211vap *vap, struct mbuf *m,
    struct ieee80211_mesh_route *rt_gate)
{
	struct ifnet *ifp = vap->iv_ifp;
	struct ieee80211_node *ni;

	FUNC0(vap->iv_ic);

	ni = FUNC1(vap, rt_gate->rt_dest);
	if (ni == NULL) {
		FUNC3(ifp, IFCOUNTER_OERRORS, 1);
		FUNC4(m);
		return;
	}

	/*
	 * Send through the VAP packet transmit path.
	 * This consumes the node ref grabbed above and
	 * the mbuf, regardless of whether there's a problem
	 * or not.
	 */
	(void) FUNC2(vap, m, ni);
}