
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* arswitch_vlan_getvgroup ) (struct arswitch_softc*,int *) ;} ;
struct arswitch_softc {TYPE_1__ hal; } ;
typedef int etherswitch_vlangroup_t ;
typedef int device_t ;


 struct arswitch_softc* device_get_softc (int ) ;
 int stub1 (struct arswitch_softc*,int *) ;

__attribute__((used)) static int
arswitch_getvgroup(device_t dev, etherswitch_vlangroup_t *e)
{
 struct arswitch_softc *sc = device_get_softc(dev);

 return (sc->hal.arswitch_vlan_getvgroup(sc, e));
}
