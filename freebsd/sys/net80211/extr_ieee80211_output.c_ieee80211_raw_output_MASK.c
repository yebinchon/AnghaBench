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
struct TYPE_2__ {int csum_flags; void* rcvif; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct ieee80211vap {int /*<<< orphan*/  iv_ifp; struct ieee80211com* iv_ic; } ;
struct ieee80211com {int (* ic_raw_xmit ) (struct ieee80211_node*,struct mbuf*,struct ieee80211_bpf_params const*) ;} ;
struct ieee80211_node {int dummy; } ;
struct ieee80211_bpf_params {int dummy; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct ieee80211_bpf_params const*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct ieee80211_node*,struct mbuf*,struct ieee80211_bpf_params const*) ; 

int
FUNC5(struct ieee80211vap *vap, struct ieee80211_node *ni,
    struct mbuf *m, const struct ieee80211_bpf_params *params)
{
	struct ieee80211com *ic = vap->iv_ic;
	int error;

	/*
	 * Set node - the caller has taken a reference, so ensure
	 * that the mbuf has the same node value that
	 * it would if it were going via the normal path.
	 */
	FUNC0((m->m_pkthdr.csum_flags & CSUM_SND_TAG) == 0);
	m->m_pkthdr.rcvif = (void *)ni;

	/*
	 * Attempt to add bpf transmit parameters.
	 *
	 * For now it's ok to fail; the raw_xmit api still takes
	 * them as an option.
	 *
	 * Later on when ic_raw_xmit() has params removed,
	 * they'll have to be added - so fail the transmit if
	 * they can't be.
	 */
	if (params)
		(void) FUNC1(m, params);

	error = ic->ic_raw_xmit(ni, m, params);
	if (error) {
		FUNC3(vap->iv_ifp, IFCOUNTER_OERRORS, 1);
		FUNC2(ni);
	}
	return (error);
}