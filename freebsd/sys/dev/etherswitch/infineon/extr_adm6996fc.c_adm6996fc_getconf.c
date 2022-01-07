
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct adm6996fc_softc {int vlan_mode; } ;
struct TYPE_3__ {int vlan_mode; int cmd; } ;
typedef TYPE_1__ etherswitch_conf_t ;
typedef int device_t ;


 int ETHERSWITCH_CONF_VLAN_MODE ;
 struct adm6996fc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
adm6996fc_getconf(device_t dev, etherswitch_conf_t *conf)
{
 struct adm6996fc_softc *sc;

 sc = device_get_softc(dev);


 conf->cmd = ETHERSWITCH_CONF_VLAN_MODE;
 conf->vlan_mode = sc->vlan_mode;

 return (0);
}
