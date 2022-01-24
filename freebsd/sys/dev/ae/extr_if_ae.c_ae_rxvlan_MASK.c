#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ifnet {int if_capenable; } ;
struct TYPE_6__ {struct ifnet* ifp; } ;
typedef  TYPE_1__ ae_softc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  AE_MAC_REG ; 
 int /*<<< orphan*/  AE_MAC_RMVLAN_EN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int IFCAP_VLAN_HWTAGGING ; 

__attribute__((used)) static void
FUNC3(ae_softc_t *sc)
{
	struct ifnet *ifp;
	uint32_t val;

	FUNC0(sc);
	ifp = sc->ifp;
	val = FUNC1(sc, AE_MAC_REG);
	val &= ~AE_MAC_RMVLAN_EN;
	if ((ifp->if_capenable & IFCAP_VLAN_HWTAGGING) != 0)
		val |= AE_MAC_RMVLAN_EN;
	FUNC2(sc, AE_MAC_REG, val);
}