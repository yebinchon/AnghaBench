
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct e6000sw_softc {int dummy; } ;
struct TYPE_3__ {int cmd; int vlan_mode; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int E6000SW_LOCK (struct e6000sw_softc*) ;
 int E6000SW_UNLOCK (struct e6000sw_softc*) ;
 int ETHERSWITCH_CONF_VLAN_MODE ;
 struct e6000sw_softc* device_get_softc (int ) ;
 int e6000sw_set_vlan_mode (struct e6000sw_softc*,int ) ;

__attribute__((used)) static int
e6000sw_setconf(device_t dev, etherswitch_conf_t *conf)
{
 struct e6000sw_softc *sc;


 sc = device_get_softc(dev);
 if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
  E6000SW_LOCK(sc);
  e6000sw_set_vlan_mode(sc, conf->vlan_mode);
  E6000SW_UNLOCK(sc);
 }

 return (0);
}
