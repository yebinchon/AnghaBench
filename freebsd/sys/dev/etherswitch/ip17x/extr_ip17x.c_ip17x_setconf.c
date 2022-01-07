
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* ip17x_set_vlan_mode ) (struct ip17x_softc*,int ) ;} ;
struct ip17x_softc {TYPE_1__ hal; } ;
struct TYPE_5__ {int cmd; int vlan_mode; } ;
typedef TYPE_2__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_VLAN_MODE ;
 struct ip17x_softc* device_get_softc (int ) ;
 int stub1 (struct ip17x_softc*,int ) ;

__attribute__((used)) static int
ip17x_setconf(device_t dev, etherswitch_conf_t *conf)
{
 struct ip17x_softc *sc;

 sc = device_get_softc(dev);


 if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE)
  sc->hal.ip17x_set_vlan_mode(sc, conf->vlan_mode);

 return (0);
}
