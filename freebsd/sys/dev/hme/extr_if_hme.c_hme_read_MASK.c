#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int32_t ;
struct TYPE_6__ {scalar_t__ len; struct ifnet* rcvif; } ;
struct mbuf {scalar_t__ m_len; TYPE_3__ m_pkthdr; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_5__ {TYPE_1__* rb_rxdesc; } ;
struct hme_softc {TYPE_2__ sc_rb; int /*<<< orphan*/  sc_dev; struct ifnet* sc_ifp; } ;
struct ether_header {int dummy; } ;
struct TYPE_4__ {struct mbuf* hrx_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hme_softc*) ; 
 int HME_MAX_FRAMESIZE ; 
 scalar_t__ HME_RXOFFS ; 
 int /*<<< orphan*/  FUNC2 (struct hme_softc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int IFCAP_RXCSUM ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  KTR_HME ; 
 scalar_t__ FUNC4 (struct hme_softc*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hme_softc*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC10(struct hme_softc *sc, int ix, int len, u_int32_t flags)
{
	struct ifnet *ifp = sc->sc_ifp;
	struct mbuf *m;

	if (len <= sizeof(struct ether_header) ||
	    len > HME_MAX_FRAMESIZE) {
#ifdef HMEDEBUG
		HME_WHINE(sc->sc_dev, "invalid packet size %d; dropping\n",
		    len);
#endif
		FUNC7(ifp, IFCOUNTER_IERRORS, 1);
		FUNC5(sc, ix);
		return;
	}

	m = sc->sc_rb.rb_rxdesc[ix].hrx_m;
	FUNC0(KTR_HME, "hme_read: len %d", len);

	if (FUNC4(sc, ix, 0) != 0) {
		/*
		 * hme_add_rxbuf will leave the old buffer in the ring until
		 * it is sure that a new buffer can be mapped. If it can not,
		 * drop the packet, but leave the interface up.
		 */
		FUNC7(ifp, IFCOUNTER_IQDROPS, 1);
		FUNC5(sc, ix);
		return;
	}

	FUNC7(ifp, IFCOUNTER_IPACKETS, 1);

	m->m_pkthdr.rcvif = ifp;
	m->m_pkthdr.len = m->m_len = len + HME_RXOFFS;
	FUNC8(m, HME_RXOFFS);
	/* RX TCP/UDP checksum */
	if (ifp->if_capenable & IFCAP_RXCSUM)
		FUNC6(m, flags);
	/* Pass the packet up. */
	FUNC2(sc);
	(*ifp->if_input)(ifp, m);
	FUNC1(sc);
}