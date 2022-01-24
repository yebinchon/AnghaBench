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
struct ecore_vlan_mac_obj {int (* delete_all ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct ecore_mcast_ramrod_params {unsigned long ramrod_flags; int /*<<< orphan*/ * mcast_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {int /*<<< orphan*/  mcast_obj; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct ecore_vlan_mac_obj mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ECORE_ETH_MAC ; 
 int /*<<< orphan*/  ECORE_MCAST_CMD_CONT ; 
 int /*<<< orphan*/  ECORE_MCAST_CMD_DEL ; 
 int /*<<< orphan*/  ECORE_UC_LIST_MAC ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  RAMROD_DRV_CLR_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ; 
 int FUNC4 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    unsigned long ramrod_flags = 0, vlan_mac_flags = 0;
    struct ecore_mcast_ramrod_params rparam = { NULL };
    struct ecore_vlan_mac_obj *mac_obj = &sc->sp_objs->mac_obj;
    int rc;

    /* Cleanup MACs' object first... */

    /* Wait for completion of requested */
    FUNC1(RAMROD_COMP_WAIT, &ramrod_flags);
    /* Perform a dry cleanup */
    FUNC1(RAMROD_DRV_CLR_ONLY, &ramrod_flags);

    /* Clean ETH primary MAC */
    FUNC1(ECORE_ETH_MAC, &vlan_mac_flags);
    rc = mac_obj->delete_all(sc, &sc->sp_objs->mac_obj, &vlan_mac_flags,
                             &ramrod_flags);
    if (rc != 0) {
        FUNC0(sc, "Failed to clean ETH MACs (%d)\n", rc);
    }

    /* Cleanup UC list */
    vlan_mac_flags = 0;
    FUNC1(ECORE_UC_LIST_MAC, &vlan_mac_flags);
    rc = mac_obj->delete_all(sc, mac_obj, &vlan_mac_flags,
                             &ramrod_flags);
    if (rc != 0) {
        FUNC0(sc, "Failed to clean UC list MACs (%d)\n", rc);
    }

    /* Now clean mcast object... */

    rparam.mcast_obj = &sc->mcast_obj;
    FUNC1(RAMROD_DRV_CLR_ONLY, &rparam.ramrod_flags);

    /* Add a DEL command... */
    rc = FUNC2(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        FUNC0(sc, "Failed to send DEL MCAST command (%d)\n", rc);
    }

    /* now wait until all pending commands are cleared */

    rc = FUNC2(sc, &rparam, ECORE_MCAST_CMD_CONT);
    while (rc != 0) {
        if (rc < 0) {
            FUNC0(sc, "Failed to clean MCAST object (%d)\n", rc);
            return;
        }

        rc = FUNC2(sc, &rparam, ECORE_MCAST_CMD_CONT);
    }
}