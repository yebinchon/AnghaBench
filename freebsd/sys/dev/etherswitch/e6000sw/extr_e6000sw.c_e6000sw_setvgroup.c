
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int etherswitch_vlangroup_t ;
struct TYPE_6__ {scalar_t__ vlan_mode; } ;
typedef TYPE_1__ e6000sw_softc_t ;
typedef int device_t ;


 int E6000SW_LOCK_ASSERT (TYPE_1__*,int ) ;
 int EINVAL ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int SA_XLOCKED ;
 TYPE_1__* device_get_softc (int ) ;
 int e6000sw_set_dot1q_vlan (TYPE_1__*,int *) ;
 int e6000sw_set_port_vlan (TYPE_1__*,int *) ;

__attribute__((used)) static int
e6000sw_setvgroup(device_t dev, etherswitch_vlangroup_t *vg)
{
 e6000sw_softc_t *sc;

 sc = device_get_softc(dev);
 E6000SW_LOCK_ASSERT(sc, SA_XLOCKED);

 if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT)
  return (e6000sw_set_port_vlan(sc, vg));
 else if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q)
  return (e6000sw_set_dot1q_vlan(sc, vg));

 return (EINVAL);
}
