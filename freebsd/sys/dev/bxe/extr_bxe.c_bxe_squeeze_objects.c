
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_vlan_mac_obj {int (* delete_all ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct ecore_mcast_ramrod_params {unsigned long ramrod_flags; int * mcast_obj; int * member_0; } ;
struct bxe_softc {int mcast_obj; TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct ecore_vlan_mac_obj mac_obj; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int ECORE_ETH_MAC ;
 int ECORE_MCAST_CMD_CONT ;
 int ECORE_MCAST_CMD_DEL ;
 int ECORE_UC_LIST_MAC ;
 int RAMROD_COMP_WAIT ;
 int RAMROD_DRV_CLR_ONLY ;
 int bxe_set_bit (int ,unsigned long*) ;
 int ecore_config_mcast (struct bxe_softc*,struct ecore_mcast_ramrod_params*,int ) ;
 int stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;
 int stub2 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;

__attribute__((used)) static void
bxe_squeeze_objects(struct bxe_softc *sc)
{
    unsigned long ramrod_flags = 0, vlan_mac_flags = 0;
    struct ecore_mcast_ramrod_params rparam = { ((void*)0) };
    struct ecore_vlan_mac_obj *mac_obj = &sc->sp_objs->mac_obj;
    int rc;




    bxe_set_bit(RAMROD_COMP_WAIT, &ramrod_flags);

    bxe_set_bit(RAMROD_DRV_CLR_ONLY, &ramrod_flags);


    bxe_set_bit(ECORE_ETH_MAC, &vlan_mac_flags);
    rc = mac_obj->delete_all(sc, &sc->sp_objs->mac_obj, &vlan_mac_flags,
                             &ramrod_flags);
    if (rc != 0) {
        BLOGE(sc, "Failed to clean ETH MACs (%d)\n", rc);
    }


    vlan_mac_flags = 0;
    bxe_set_bit(ECORE_UC_LIST_MAC, &vlan_mac_flags);
    rc = mac_obj->delete_all(sc, mac_obj, &vlan_mac_flags,
                             &ramrod_flags);
    if (rc != 0) {
        BLOGE(sc, "Failed to clean UC list MACs (%d)\n", rc);
    }



    rparam.mcast_obj = &sc->mcast_obj;
    bxe_set_bit(RAMROD_DRV_CLR_ONLY, &rparam.ramrod_flags);


    rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_DEL);
    if (rc < 0) {
        BLOGE(sc, "Failed to send DEL MCAST command (%d)\n", rc);
    }



    rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_CONT);
    while (rc != 0) {
        if (rc < 0) {
            BLOGE(sc, "Failed to clean MCAST object (%d)\n", rc);
            return;
        }

        rc = ecore_config_mcast(sc, &rparam, ECORE_MCAST_CMD_CONT);
    }
}
