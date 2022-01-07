
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t echo; } ;
struct TYPE_7__ {TYPE_2__ eth_event; } ;
struct TYPE_8__ {TYPE_3__ data; } ;
union event_ring_elem {TYPE_4__ message; } ;
typedef size_t uint32_t ;
struct ecore_vlan_mac_obj {int (* complete ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,union event_ring_elem*,unsigned long*) ;} ;
struct bxe_softc {TYPE_1__* sp_objs; } ;
struct TYPE_5__ {struct ecore_vlan_mac_obj mac_obj; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int BLOGE (struct bxe_softc*,char*,int) ;
 size_t BXE_SWCID_MASK ;
 int BXE_SWCID_SHIFT ;
 int DBG_SP ;


 int RAMROD_CONT ;
 int bit_set (unsigned long*,int ) ;
 int bxe_handle_mcast_eqe (struct bxe_softc*) ;
 int le32toh (size_t) ;
 int stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,union event_ring_elem*,unsigned long*) ;

__attribute__((used)) static void
bxe_handle_classification_eqe(struct bxe_softc *sc,
                              union event_ring_elem *elem)
{
    unsigned long ramrod_flags = 0;
    int rc = 0;
    uint32_t cid = elem->message.data.eth_event.echo & BXE_SWCID_MASK;
    struct ecore_vlan_mac_obj *vlan_mac_obj;


    bit_set(&ramrod_flags, RAMROD_CONT);

    switch (le32toh(elem->message.data.eth_event.echo) >> BXE_SWCID_SHIFT) {
    case 129:
        BLOGD(sc, DBG_SP, "Got SETUP_MAC completions\n");
        vlan_mac_obj = &sc->sp_objs[cid].mac_obj;
        break;

    case 128:
        BLOGD(sc, DBG_SP, "Got SETUP_MCAST completions\n");




        bxe_handle_mcast_eqe(sc);
        return;

    default:
        BLOGE(sc, "Unsupported classification command: %d\n",
              elem->message.data.eth_event.echo);
        return;
    }

    rc = vlan_mac_obj->complete(sc, vlan_mac_obj, elem, &ramrod_flags);

    if (rc < 0) {
        BLOGE(sc, "Failed to schedule new commands (%d)\n", rc);
    } else if (rc > 0) {
        BLOGD(sc, DBG_SP, "Scheduled next pending commands...\n");
    }
}
