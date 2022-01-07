
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int mac_addr; } ;
struct bxe_softc {TYPE_2__* sp_objs; TYPE_1__ link_params; } ;
struct TYPE_4__ {int mac_obj; } ;


 int BLOGD (struct bxe_softc*,int ,char*) ;
 int DBG_LOAD ;
 int ECORE_ETH_MAC ;
 int RAMROD_COMP_WAIT ;
 int bxe_set_bit (int ,unsigned long*) ;
 int bxe_set_mac_one (struct bxe_softc*,int ,int *,int ,int ,unsigned long*) ;

__attribute__((used)) static int
bxe_set_eth_mac(struct bxe_softc *sc,
                uint8_t set)
{
    unsigned long ramrod_flags = 0;

    BLOGD(sc, DBG_LOAD, "Adding Ethernet MAC\n");

    bxe_set_bit(RAMROD_COMP_WAIT, &ramrod_flags);


    return (bxe_set_mac_one(sc, sc->link_params.mac_addr,
                            &sc->sp_objs->mac_obj,
                            set, ECORE_ETH_MAC, &ramrod_flags));
}
