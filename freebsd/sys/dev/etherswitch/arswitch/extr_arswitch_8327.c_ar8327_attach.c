
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int es_vlan_caps; int es_nvlangroups; } ;
struct TYPE_3__ {int arswitch_phy_write; int arswitch_phy_read; int arswitch_atu_fetch_table; int arswitch_atu_flush_port; int arswitch_atu_flush; int arswitch_atu_learn_default; int arswitch_set_port_vlan; int arswitch_get_port_vlan; int arswitch_vlan_set_pvid; int arswitch_vlan_get_pvid; int arswitch_vlan_init_hw; int arswitch_get_dot1q_vlan; int arswitch_set_dot1q_vlan; int arswitch_purge_dot1q_vlan; int arswitch_flush_dot1q_vlan; int arswitch_port_vlan_get; int arswitch_port_vlan_setup; int arswitch_vlan_setvgroup; int arswitch_vlan_getvgroup; int arswitch_port_init; int arswitch_hw_global_setup; int arswitch_hw_setup; } ;
struct arswitch_softc {TYPE_2__ info; TYPE_1__ hal; } ;


 int AR8X16_MAX_VLANS ;
 int ETHERSWITCH_VLAN_DOT1Q ;
 int ETHERSWITCH_VLAN_DOUBLE_TAG ;
 int ETHERSWITCH_VLAN_PORT ;
 int ar8327_atu_fetch_table ;
 int ar8327_atu_flush ;
 int ar8327_atu_flush_port ;
 int ar8327_atu_learn_default ;
 int ar8327_flush_dot1q_vlan ;
 int ar8327_get_dot1q_vlan ;
 int ar8327_get_pvid ;
 int ar8327_hw_global_setup ;
 int ar8327_hw_setup ;
 int ar8327_port_init ;
 int ar8327_port_vlan_get ;
 int ar8327_port_vlan_setup ;
 int ar8327_purge_dot1q_vlan ;
 int ar8327_reset_vlans ;
 int ar8327_set_dot1q_vlan ;
 int ar8327_set_pvid ;
 int ar8327_vlan_get_port ;
 int ar8327_vlan_getvgroup ;
 int ar8327_vlan_set_port ;
 int ar8327_vlan_setvgroup ;
 int arswitch_readphy_external ;
 int arswitch_writephy_external ;

void
ar8327_attach(struct arswitch_softc *sc)
{

 sc->hal.arswitch_hw_setup = ar8327_hw_setup;
 sc->hal.arswitch_hw_global_setup = ar8327_hw_global_setup;

 sc->hal.arswitch_port_init = ar8327_port_init;

 sc->hal.arswitch_vlan_getvgroup = ar8327_vlan_getvgroup;
 sc->hal.arswitch_vlan_setvgroup = ar8327_vlan_setvgroup;
 sc->hal.arswitch_port_vlan_setup = ar8327_port_vlan_setup;
 sc->hal.arswitch_port_vlan_get = ar8327_port_vlan_get;
 sc->hal.arswitch_flush_dot1q_vlan = ar8327_flush_dot1q_vlan;
 sc->hal.arswitch_purge_dot1q_vlan = ar8327_purge_dot1q_vlan;
 sc->hal.arswitch_set_dot1q_vlan = ar8327_set_dot1q_vlan;
 sc->hal.arswitch_get_dot1q_vlan = ar8327_get_dot1q_vlan;

 sc->hal.arswitch_vlan_init_hw = ar8327_reset_vlans;
 sc->hal.arswitch_vlan_get_pvid = ar8327_get_pvid;
 sc->hal.arswitch_vlan_set_pvid = ar8327_set_pvid;

 sc->hal.arswitch_get_port_vlan = ar8327_vlan_get_port;
 sc->hal.arswitch_set_port_vlan = ar8327_vlan_set_port;

 sc->hal.arswitch_atu_learn_default = ar8327_atu_learn_default;
 sc->hal.arswitch_atu_flush = ar8327_atu_flush;
 sc->hal.arswitch_atu_flush_port = ar8327_atu_flush_port;
 sc->hal.arswitch_atu_fetch_table = ar8327_atu_fetch_table;
 sc->hal.arswitch_phy_read = arswitch_readphy_external;
 sc->hal.arswitch_phy_write = arswitch_writephy_external;


 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q |
     ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOUBLE_TAG;
 sc->info.es_nvlangroups = AR8X16_MAX_VLANS;
}
