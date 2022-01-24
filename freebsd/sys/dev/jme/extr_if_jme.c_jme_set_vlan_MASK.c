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
typedef  int /*<<< orphan*/  uint32_t ;
struct jme_softc {struct ifnet* jme_ifp; } ;
struct ifnet {int if_capenable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jme_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  FUNC2 (struct jme_softc*) ; 
 int /*<<< orphan*/  JME_RXMAC ; 
 int /*<<< orphan*/  RXMAC_VLAN_ENB ; 

__attribute__((used)) static void
FUNC3(struct jme_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg;

	FUNC2(sc);

	ifp = sc->jme_ifp;
	reg = FUNC0(sc, JME_RXMAC);
	reg &= ~RXMAC_VLAN_ENB;
	if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
		reg |= RXMAC_VLAN_ENB;
	FUNC1(sc, JME_RXMAC, reg);
}