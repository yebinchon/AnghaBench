
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* mtkswitch_vlan_init_hw ) (struct mtkswitch_softc*) ;} ;
struct TYPE_3__ {int es_vlan_caps; } ;
struct mtkswitch_softc {int vlan_mode; TYPE_2__ hal; TYPE_1__ info; } ;


 int EINVAL ;
 int stub1 (struct mtkswitch_softc*) ;

__attribute__((used)) static int
mtkswitch_set_vlan_mode(struct mtkswitch_softc *sc, uint32_t mode)
{


 if ((mode & sc->info.es_vlan_caps) != mode)
  return (EINVAL);

 sc->vlan_mode = mode;


 sc->hal.mtkswitch_vlan_init_hw(sc);

 return (0);
}
