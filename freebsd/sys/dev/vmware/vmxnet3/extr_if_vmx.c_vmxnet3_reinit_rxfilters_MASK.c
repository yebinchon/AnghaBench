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
struct vmxnet3_softc {TYPE_1__* vmx_ds; int /*<<< orphan*/  vmx_vlan_filter; struct ifnet* vmx_ifp; } ;
struct ifnet {int if_capenable; } ;
struct TYPE_2__ {int /*<<< orphan*/  vlan_filter; } ;

/* Variables and functions */
 int IFCAP_VLAN_HWFILTER ; 
 int /*<<< orphan*/  VMXNET3_CMD_VLAN_FILTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC3 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vmxnet3_softc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct vmxnet3_softc *sc)
{
	struct ifnet *ifp;

	ifp = sc->vmx_ifp;

	FUNC3(sc, FUNC2(ifp));

	if (ifp->if_capenable & IFCAP_VLAN_HWFILTER)
		FUNC0(sc->vmx_vlan_filter, sc->vmx_ds->vlan_filter,
		    sizeof(sc->vmx_ds->vlan_filter));
	else
		FUNC1(sc->vmx_ds->vlan_filter,
		    sizeof(sc->vmx_ds->vlan_filter));
	FUNC4(sc, VMXNET3_CMD_VLAN_FILTER);
}