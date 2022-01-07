
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct e6060sw_softc {scalar_t__ sw_model; scalar_t__ vlan_mode; } ;
struct TYPE_3__ {int cmd; scalar_t__ vlan_mode; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int DOT1QNONE ;
 int DOT1QSECURE ;
 scalar_t__ E6063 ;
 scalar_t__ E6065 ;
 int ETHERSWITCH_CONF_VLAN_MODE ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 struct e6060sw_softc* device_get_softc (int ) ;
 int e6060sw_dot1q_mode (int ,int ) ;
 int e6060sw_init_vtu (int ) ;
 int e6060sw_reset_vlans (int ) ;

__attribute__((used)) static int
e6060sw_setconf(device_t dev, etherswitch_conf_t *conf)
{
 struct e6060sw_softc *sc;

 sc = device_get_softc(dev);


 if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
  if (conf->vlan_mode == ETHERSWITCH_VLAN_PORT) {
   sc->vlan_mode = ETHERSWITCH_VLAN_PORT;
   e6060sw_dot1q_mode(dev, DOT1QNONE);
   e6060sw_reset_vlans(dev);
  } else if ((sc->sw_model == E6063 || sc->sw_model == E6065) &&
      conf->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
   sc->vlan_mode = ETHERSWITCH_VLAN_DOT1Q;
   e6060sw_dot1q_mode(dev, DOT1QSECURE);
   e6060sw_init_vtu(dev);
  } else {
   sc->vlan_mode = 0;

   e6060sw_dot1q_mode(dev, DOT1QNONE);
   e6060sw_reset_vlans(dev);
  }
 }

 return (0);
}
