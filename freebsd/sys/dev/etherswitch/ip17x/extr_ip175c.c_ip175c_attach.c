
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int es_vlan_caps; } ;
struct TYPE_3__ {int ip17x_set_vlan_mode; int ip17x_get_vlan_mode; int ip17x_hw_setup; int ip17x_reset; } ;
struct ip17x_softc {int phymask; int sc_dev; TYPE_2__ info; int numports; int cpuport; TYPE_1__ hal; } ;


 int ETHERSWITCH_VLAN_DOT1Q ;
 int ETHERSWITCH_VLAN_PORT ;
 int IP175C_MII_CTL_REG ;
 int IP175C_MII_MII1_RMII_EN ;
 int IP175C_MII_PHY ;
 int IP175X_CPU_PORT ;
 int IP175X_NUM_PORTS ;
 int device_printf (int ,char*,...) ;
 int ip175c_get_vlan_mode ;
 int ip175c_hw_setup ;
 int ip175c_reset ;
 int ip175c_set_vlan_mode ;
 int ip17x_readphy (int ,int ,int ) ;

void
ip175c_attach(struct ip17x_softc *sc)
{
 uint32_t data;

 data = ip17x_readphy(sc->sc_dev, IP175C_MII_PHY, IP175C_MII_CTL_REG);
 device_printf(sc->sc_dev, "MII: %x\n", data);

 if((data & (1 << IP175C_MII_MII1_RMII_EN)) == 0)
  sc->phymask |= 0x10;

 sc->hal.ip17x_reset = ip175c_reset;
 sc->hal.ip17x_hw_setup = ip175c_hw_setup;
 sc->hal.ip17x_get_vlan_mode = ip175c_get_vlan_mode;
 sc->hal.ip17x_set_vlan_mode = ip175c_set_vlan_mode;


 sc->cpuport = IP175X_CPU_PORT;
 sc->numports = IP175X_NUM_PORTS;
 sc->info.es_vlan_caps = ETHERSWITCH_VLAN_PORT | ETHERSWITCH_VLAN_DOT1Q;

 device_printf(sc->sc_dev, "type: IP175C\n");
}
