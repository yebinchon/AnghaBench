
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ecore_vlan_mac_obj {int dummy; } ;
struct bxe_softc {TYPE_1__* sp_objs; int ifp; } ;
struct bxe_set_addr_ctx {scalar_t__ rc; int ramrod_flags; int member_2; int member_1; struct bxe_softc* member_0; } ;
typedef int if_t ;
struct TYPE_2__ {struct ecore_vlan_mac_obj mac_obj; } ;


 int BLOGE (struct bxe_softc*,char*,int) ;
 int ECORE_UC_LIST_MAC ;
 int FALSE ;
 int RAMROD_CONT ;
 int bit_set (int *,int ) ;
 int bxe_del_all_macs (struct bxe_softc*,struct ecore_vlan_mac_obj*,int ,int ) ;
 int bxe_set_addr ;
 int bxe_set_mac_one (struct bxe_softc*,int *,struct ecore_vlan_mac_obj*,int ,int ,int *) ;
 int if_foreach_lladdr (int ,int ,struct bxe_set_addr_ctx*) ;

__attribute__((used)) static int
bxe_set_uc_list(struct bxe_softc *sc)
{
    if_t ifp = sc->ifp;
    struct ecore_vlan_mac_obj *mac_obj = &sc->sp_objs->mac_obj;
    struct bxe_set_addr_ctx ctx = { sc, 0, 0 };
    int rc;


    rc = bxe_del_all_macs(sc, mac_obj, ECORE_UC_LIST_MAC, FALSE);
    if (rc < 0) {
        BLOGE(sc, "Failed to schedule delete of all ETH MACs (%d)\n", rc);
        return (rc);
    }

    if_foreach_lladdr(ifp, bxe_set_addr, &ctx);
    if (ctx.rc < 0)
 return (ctx.rc);


    bit_set(&ctx.ramrod_flags, RAMROD_CONT);
    return (bxe_set_mac_one(sc, ((void*)0), mac_obj, FALSE ,
                            ECORE_UC_LIST_MAC, &ctx.ramrod_flags));
}
