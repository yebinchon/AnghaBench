
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtkswitch_softc {int dummy; } ;
struct TYPE_3__ {int cmd; int vlan_mode; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_VLAN_MODE ;
 struct mtkswitch_softc* device_get_softc (int ) ;
 int mtkswitch_set_vlan_mode (struct mtkswitch_softc*,int ) ;

__attribute__((used)) static int
mtkswitch_setconf(device_t dev, etherswitch_conf_t *conf)
{
 struct mtkswitch_softc *sc;
 int err;

 sc = device_get_softc(dev);


 if (conf->cmd & ETHERSWITCH_CONF_VLAN_MODE) {
  err = mtkswitch_set_vlan_mode(sc, conf->vlan_mode);
  if (err != 0)
   return (err);
 }

 return (0);
}
