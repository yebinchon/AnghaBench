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
struct TYPE_4__ {int csum_flags; TYPE_1__* snd_tag; } ;
struct mbuf {TYPE_2__ m_pkthdr; } ;
struct lagg_softc {scalar_t__ sc_proto; scalar_t__ sc_count; } ;
struct ifnet {scalar_t__ if_softc; } ;
struct TYPE_3__ {struct ifnet* ifp; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct ifnet*,struct mbuf*) ; 
 int /*<<< orphan*/  IFCOUNTER_OERRORS ; 
 scalar_t__ LAGG_PROTO_NONE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct lagg_softc*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC7(struct ifnet *ifp, struct mbuf *m)
{
	struct lagg_softc *sc = (struct lagg_softc *)ifp->if_softc;
	int error;

#if defined(KERN_TLS) || defined(RATELIMIT)
	if (m->m_pkthdr.csum_flags & CSUM_SND_TAG)
		MPASS(m->m_pkthdr.snd_tag->ifp == ifp);
#endif
	FUNC1();
	/* We need a Tx algorithm and at least one port */
	if (sc->sc_proto == LAGG_PROTO_NONE || sc->sc_count == 0) {
		FUNC2();
		FUNC6(m);
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);
		return (ENXIO);
	}

	FUNC0(ifp, m);

	error = FUNC5(sc, m);
	FUNC2();

	if (error != 0)
		FUNC4(ifp, IFCOUNTER_OERRORS, 1);

	return (error);
}