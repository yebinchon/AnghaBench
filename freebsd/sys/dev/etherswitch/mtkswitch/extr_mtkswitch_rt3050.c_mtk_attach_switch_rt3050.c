
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mtkswitch_reg_write; int mtkswitch_reg_read; int mtkswitch_phy_write; int mtkswitch_phy_read; int mtkswitch_vlan_set_pvid; int mtkswitch_vlan_get_pvid; int mtkswitch_vlan_setvgroup; int mtkswitch_vlan_getvgroup; int mtkswitch_vlan_init_hw; int mtkswitch_port_vlan_get; int mtkswitch_port_vlan_setup; int mtkswitch_atu_flush; int mtkswitch_get_port_status; int mtkswitch_port_init; int mtkswitch_hw_global_setup; int mtkswitch_hw_setup; int mtkswitch_reset; } ;
struct TYPE_3__ {int es_nports; int es_nvlangroups; int es_name; int es_vlan_caps; } ;
struct mtkswitch_softc {int portmap; int phymap; TYPE_2__ hal; TYPE_1__ info; } ;


 int ETHERSWITCH_VLAN_DOT1Q ;
 int mtkswitch_atu_flush ;
 int mtkswitch_get_port_status ;
 int mtkswitch_hw_global_setup ;
 int mtkswitch_hw_setup ;
 int mtkswitch_phy_read ;
 int mtkswitch_phy_write ;
 int mtkswitch_port_init ;
 int mtkswitch_port_vlan_get ;
 int mtkswitch_port_vlan_setup ;
 int mtkswitch_reg_read ;
 int mtkswitch_reg_write ;
 int mtkswitch_reset ;
 int mtkswitch_vlan_get_pvid ;
 int mtkswitch_vlan_getvgroup ;
 int mtkswitch_vlan_init_hw ;
 int mtkswitch_vlan_set_pvid ;
 int mtkswitch_vlan_setvgroup ;
 int sprintf (int ,char*) ;

extern void
mtk_attach_switch_rt3050(struct mtkswitch_softc *sc)
{

 sc->portmap = 0x7f;
 sc->phymap = 0x1f;

 sc->info.es_nports = 7;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q;
 sc->info.es_nvlangroups = 16;
 sprintf(sc->info.es_name, "Ralink ESW");

 sc->hal.mtkswitch_reset = mtkswitch_reset;
 sc->hal.mtkswitch_hw_setup = mtkswitch_hw_setup;
 sc->hal.mtkswitch_hw_global_setup = mtkswitch_hw_global_setup;
 sc->hal.mtkswitch_port_init = mtkswitch_port_init;
 sc->hal.mtkswitch_get_port_status = mtkswitch_get_port_status;
 sc->hal.mtkswitch_atu_flush = mtkswitch_atu_flush;
 sc->hal.mtkswitch_port_vlan_setup = mtkswitch_port_vlan_setup;
 sc->hal.mtkswitch_port_vlan_get = mtkswitch_port_vlan_get;
 sc->hal.mtkswitch_vlan_init_hw = mtkswitch_vlan_init_hw;
 sc->hal.mtkswitch_vlan_getvgroup = mtkswitch_vlan_getvgroup;
 sc->hal.mtkswitch_vlan_setvgroup = mtkswitch_vlan_setvgroup;
 sc->hal.mtkswitch_vlan_get_pvid = mtkswitch_vlan_get_pvid;
 sc->hal.mtkswitch_vlan_set_pvid = mtkswitch_vlan_set_pvid;
 sc->hal.mtkswitch_phy_read = mtkswitch_phy_read;
 sc->hal.mtkswitch_phy_write = mtkswitch_phy_write;
 sc->hal.mtkswitch_reg_read = mtkswitch_reg_read;
 sc->hal.mtkswitch_reg_write = mtkswitch_reg_write;
}
