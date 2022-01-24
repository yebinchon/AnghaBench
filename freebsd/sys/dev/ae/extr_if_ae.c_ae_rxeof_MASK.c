#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_9__ {int /*<<< orphan*/  ether_vtag; } ;
struct mbuf {int /*<<< orphan*/  m_flags; TYPE_1__ m_pkthdr; } ;
struct ifnet {int if_capenable; int /*<<< orphan*/  (* if_input ) (struct ifnet*,struct mbuf*) ;} ;
struct TYPE_10__ {struct ifnet* ifp; } ;
typedef  TYPE_2__ ae_softc_t ;
struct TYPE_11__ {int /*<<< orphan*/  vlan; int /*<<< orphan*/ * data; int /*<<< orphan*/  len; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ ae_rxd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int AE_RXD_HAS_VLAN ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  ETHER_ALIGN ; 
 unsigned int ETHER_CRC_LEN ; 
 unsigned int ETHER_MIN_LEN ; 
 unsigned int ETHER_VLAN_ENCAP_LEN ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  IFCOUNTER_IERRORS ; 
 int /*<<< orphan*/  IFCOUNTER_IPACKETS ; 
 int /*<<< orphan*/  IFCOUNTER_IQDROPS ; 
 int /*<<< orphan*/  M_VLANTAG ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*,char*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,struct mbuf*) ; 

__attribute__((used)) static void
FUNC9(ae_softc_t *sc, ae_rxd_t *rxd)
{
	struct ifnet *ifp;
	struct mbuf *m;
	unsigned int size;
	uint16_t flags;

	FUNC1(sc);

	ifp = sc->ifp;
	flags = FUNC6(rxd->flags);

#ifdef AE_DEBUG
	if_printf(ifp, "Rx interrupt occuried.\n");
#endif
	size = FUNC6(rxd->len) - ETHER_CRC_LEN;
	if (size < (ETHER_MIN_LEN - ETHER_CRC_LEN - ETHER_VLAN_ENCAP_LEN)) {
		FUNC5(ifp, "Runt frame received.");
		FUNC4(ifp, IFCOUNTER_IERRORS, 1);
		return;
	}

	m = FUNC7(&rxd->data[0], size, ETHER_ALIGN, ifp, NULL);
	if (m == NULL) {
		FUNC4(ifp, IFCOUNTER_IQDROPS, 1);
		return;
	}

	if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0 &&
	    (flags & AE_RXD_HAS_VLAN) != 0) {
		m->m_pkthdr.ether_vtag = FUNC2(FUNC6(rxd->vlan));
		m->m_flags |= M_VLANTAG;
	}

	FUNC4(ifp, IFCOUNTER_IPACKETS, 1);
	/*
	 * Pass it through.
	 */
	FUNC3(sc);
	(*ifp->if_input)(ifp, m);
	FUNC0(sc);
}