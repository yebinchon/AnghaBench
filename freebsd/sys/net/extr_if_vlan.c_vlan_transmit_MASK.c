#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vlan_snd_tag {TYPE_2__* tag; } ;
struct TYPE_3__ {int len; int csum_flags; struct m_snd_tag* snd_tag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; } ;
struct m_snd_tag {struct ifnet* ifp; } ;
struct ifvlan {int /*<<< orphan*/  ifv_pcp; int /*<<< orphan*/  ifv_vid; } ;
struct ifnet {int (* if_transmit ) (struct ifnet*,struct mbuf*) ;struct ifvlan* if_softc; } ;
struct TYPE_4__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int CSUM_SND_TAG ; 
 int EAGAIN ; 
 int ENETDOWN ; 
 int /*<<< orphan*/  IFCOUNTER_OBYTES ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_OMCASTS ; 
 int /*<<< orphan*/  IFCOUNTER_OPACKETS ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int M_BCAST ; 
 int M_MCAST ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct ifnet* FUNC3 (struct ifvlan*) ; 
 int /*<<< orphan*/ * FUNC4 (struct ifvlan*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf**,struct ifnet*,struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*) ; 
 struct m_snd_tag* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct m_snd_tag*) ; 
 struct vlan_snd_tag* FUNC11 (struct m_snd_tag*) ; 
 int FUNC12 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC13(struct ifnet *ifp, struct mbuf *m)
{
	struct ifvlan *ifv;
	struct ifnet *p;
	int error, len, mcast;

	FUNC2();

	ifv = ifp->if_softc;
	if (FUNC4(ifv) == NULL) {
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
		FUNC8(m);
		return (ENETDOWN);
	}
	p = FUNC3(ifv);
	len = m->m_pkthdr.len;
	mcast = (m->m_flags & (M_MCAST | M_BCAST)) ? 1 : 0;

	FUNC0(ifp, m);

#if defined(KERN_TLS) || defined(RATELIMIT)
	if (m->m_pkthdr.csum_flags & CSUM_SND_TAG) {
		struct vlan_snd_tag *vst;
		struct m_snd_tag *mst;

		MPASS(m->m_pkthdr.snd_tag->ifp == ifp);
		mst = m->m_pkthdr.snd_tag;
		vst = mst_to_vst(mst);
		if (vst->tag->ifp != p) {
			if_inc_counter(ifp, IFCOUNTER_OERRORS, 1);
			m_freem(m);
			return (EAGAIN);
		}

		m->m_pkthdr.snd_tag = m_snd_tag_ref(vst->tag);
		m_snd_tag_rele(mst);
	}
#endif

	/*
	 * Do not run parent's if_transmit() if the parent is not up,
	 * or parent's driver will cause a system crash.
	 */
	if (!FUNC5(p)) {
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
		FUNC8(m);
		return (ENETDOWN);
	}

	if (!FUNC6(&m, ifp, p, ifv->ifv_vid, ifv->ifv_pcp)) {
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
		return (0);
	}

	/*
	 * Send it, precisely as ether_output() would have.
	 */
	error = (p->if_transmit)(p, m);
	if (error == 0) {
		FUNC7(ifp, IFCOUNTER_OPACKETS, 1);
		FUNC7(ifp, IFCOUNTER_OBYTES, len);
		FUNC7(ifp, IFCOUNTER_OMCASTS, mcast);
	} else
		FUNC7(ifp, IFCOUNTER_OERRORS, 1);
	return (error);
}