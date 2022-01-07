
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* arswitch_vlan_init_hw ) (struct arswitch_softc*) ;} ;
struct TYPE_3__ {int es_vlan_caps; } ;
struct arswitch_softc {int vlan_mode; TYPE_2__ hal; TYPE_1__ info; } ;


 int EINVAL ;


 int stub1 (struct arswitch_softc*) ;

__attribute__((used)) static int
arswitch_set_vlan_mode(struct arswitch_softc *sc, uint32_t mode)
{


 if ((mode & sc->info.es_vlan_caps) != mode)
  return (EINVAL);

 switch (mode) {
 case 129:
  sc->vlan_mode = 129;
  break;
 case 128:
  sc->vlan_mode = 128;
  break;
 default:
  sc->vlan_mode = 0;
 }


 sc->hal.arswitch_vlan_init_hw(sc);

 return (0);
}
