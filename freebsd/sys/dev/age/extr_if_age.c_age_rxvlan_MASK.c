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
struct ifnet {int if_capenable; } ;
struct age_softc {struct ifnet* age_ifp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_MAC_CFG ; 
 int /*<<< orphan*/  FUNC1 (struct age_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct age_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int /*<<< orphan*/  MAC_CFG_VLAN_TAG_STRIP ; 

__attribute__((used)) static void
FUNC3(struct age_softc *sc)
{
	struct ifnet *ifp;
	uint32_t reg;

	FUNC0(sc);

	ifp = sc->age_ifp;
	reg = FUNC1(sc, AGE_MAC_CFG);
	reg &= ~MAC_CFG_VLAN_TAG_STRIP;
	if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
		reg |= MAC_CFG_VLAN_TAG_STRIP;
	FUNC2(sc, AGE_MAC_CFG, reg);
}