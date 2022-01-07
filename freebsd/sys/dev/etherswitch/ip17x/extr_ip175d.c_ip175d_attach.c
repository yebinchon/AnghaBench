
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_vlan_caps; } ;
struct TYPE_4__ {int ip17x_set_vlan_mode; int ip17x_get_vlan_mode; int ip17x_hw_setup; int ip17x_reset; } ;
struct ip17x_softc {int sc_dev; TYPE_1__ info; int numports; int cpuport; TYPE_2__ hal; } ;


 int ETHERSWITCH_VLAN_DOT1Q ;
 int IP175X_CPU_PORT ;
 int IP175X_NUM_PORTS ;
 int device_printf (int ,char*) ;
 int ip175d_get_vlan_mode ;
 int ip175d_hw_setup ;
 int ip175d_reset ;
 int ip175d_set_vlan_mode ;

void
ip175d_attach(struct ip17x_softc *sc)
{

 sc->hal.ip17x_reset = ip175d_reset;
 sc->hal.ip17x_hw_setup = ip175d_hw_setup;
 sc->hal.ip17x_get_vlan_mode = ip175d_get_vlan_mode;
 sc->hal.ip17x_set_vlan_mode = ip175d_set_vlan_mode;


 sc->cpuport = IP175X_CPU_PORT;
 sc->numports = IP175X_NUM_PORTS;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_DOT1Q;

 device_printf(sc->sc_dev, "type: IP175D\n");
}
