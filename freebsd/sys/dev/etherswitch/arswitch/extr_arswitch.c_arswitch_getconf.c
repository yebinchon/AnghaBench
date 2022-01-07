
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* arswitch_hw_get_switch_macaddr ) (struct arswitch_softc*,int *) ;} ;
struct arswitch_softc {TYPE_1__ hal; int vlan_mode; } ;
struct TYPE_5__ {int cmd; int switch_macaddr; int vlan_mode; } ;
typedef TYPE_2__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_SWITCH_MACADDR ;
 int ETHERSWITCH_CONF_VLAN_MODE ;
 struct arswitch_softc* device_get_softc (int ) ;
 int stub1 (struct arswitch_softc*,int *) ;

__attribute__((used)) static int
arswitch_getconf(device_t dev, etherswitch_conf_t *conf)
{
 struct arswitch_softc *sc;
 int ret;

 sc = device_get_softc(dev);


 conf->cmd = ETHERSWITCH_CONF_VLAN_MODE;
 conf->vlan_mode = sc->vlan_mode;


 ret = sc->hal.arswitch_hw_get_switch_macaddr(sc,
     &conf->switch_macaddr);
 if (ret == 0) {
  conf->cmd |= ETHERSWITCH_CONF_SWITCH_MACADDR;
 }

 return (0);
}
