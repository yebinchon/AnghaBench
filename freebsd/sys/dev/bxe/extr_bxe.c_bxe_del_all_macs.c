
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ecore_vlan_mac_obj {int (* delete_all ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;} ;
struct bxe_softc {int dummy; } ;


 int BLOGE (struct bxe_softc*,char*,int,int,int ) ;
 int RAMROD_COMP_WAIT ;
 int bxe_set_bit (int,unsigned long*) ;
 int stub1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,unsigned long*,unsigned long*) ;

__attribute__((used)) static int
bxe_del_all_macs(struct bxe_softc *sc,
                 struct ecore_vlan_mac_obj *mac_obj,
                 int mac_type,
                 uint8_t wait_for_comp)
{
    unsigned long ramrod_flags = 0, vlan_mac_flags = 0;
    int rc;


    if (wait_for_comp) {
        bxe_set_bit(RAMROD_COMP_WAIT, &ramrod_flags);
    }


    bxe_set_bit(mac_type, &vlan_mac_flags);

    rc = mac_obj->delete_all(sc, mac_obj, &vlan_mac_flags, &ramrod_flags);
    if (rc < 0) {
        BLOGE(sc, "Failed to delete MACs (%d) mac_type %d wait_for_comp 0x%x\n",
            rc, mac_type, wait_for_comp);
    }

    return (rc);
}
