#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t echo; } ;
struct TYPE_7__ {TYPE_2__ eth_event; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
union event_ring_elem {TYPE_4__ message; } ;
typedef  size_t uint32_t ;
struct ecore_vlan_mac_obj {int (* complete ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,union event_ring_elem*,unsigned long*) ;} ;
struct bxe_softc {TYPE_1__* sp_objs; } ;
struct TYPE_5__ {struct ecore_vlan_mac_obj mac_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 size_t BXE_SWCID_MASK ; 
 int BXE_SWCID_SHIFT ; 
 int /*<<< orphan*/  DBG_SP ; 
#define  ECORE_FILTER_MAC_PENDING 129 
#define  ECORE_FILTER_MCAST_PENDING 128 
 int /*<<< orphan*/  RAMROD_CONT ; 
 int /*<<< orphan*/  FUNC2 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*) ; 
 int FUNC4 (size_t) ; 
 int FUNC5 (struct bxe_softc*,struct ecore_vlan_mac_obj*,union event_ring_elem*,unsigned long*) ; 

__attribute__((used)) static void
FUNC6(struct bxe_softc      *sc,
                              union event_ring_elem *elem)
{
    unsigned long ramrod_flags = 0;
    int rc = 0;
    uint32_t cid = elem->message.data.eth_event.echo & BXE_SWCID_MASK;
    struct ecore_vlan_mac_obj *vlan_mac_obj;

    /* always push next commands out, don't wait here */
    FUNC2(&ramrod_flags, RAMROD_CONT);

    switch (FUNC4(elem->message.data.eth_event.echo) >> BXE_SWCID_SHIFT) {
    case ECORE_FILTER_MAC_PENDING:
        FUNC0(sc, DBG_SP, "Got SETUP_MAC completions\n");
        vlan_mac_obj = &sc->sp_objs[cid].mac_obj;
        break;

    case ECORE_FILTER_MCAST_PENDING:
        FUNC0(sc, DBG_SP, "Got SETUP_MCAST completions\n");
        /*
         * This is only relevant for 57710 where multicast MACs are
         * configured as unicast MACs using the same ramrod.
         */
        FUNC3(sc);
        return;

    default:
        FUNC1(sc, "Unsupported classification command: %d\n",
              elem->message.data.eth_event.echo);
        return;
    }

    rc = vlan_mac_obj->complete(sc, vlan_mac_obj, elem, &ramrod_flags);

    if (rc < 0) {
        FUNC1(sc, "Failed to schedule new commands (%d)\n", rc);
    } else if (rc > 0) {
        FUNC0(sc, DBG_SP, "Scheduled next pending commands...\n");
    }
}