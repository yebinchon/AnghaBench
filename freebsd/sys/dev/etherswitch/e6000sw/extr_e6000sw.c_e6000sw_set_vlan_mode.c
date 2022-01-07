
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct e6000sw_softc {int vlan_mode; int num_ports; } ;
struct TYPE_2__ {int es_nvlangroups; } ;


 int E6000SW_LOCK_ASSERT (struct e6000sw_softc*,int ) ;
 int E6000SW_NUM_VLANS ;
 int EINVAL ;


 int SA_XLOCKED ;
 int e6000sw_init_vlan (struct e6000sw_softc*) ;
 TYPE_1__ etherswitch_info ;

__attribute__((used)) static int
e6000sw_set_vlan_mode(struct e6000sw_softc *sc, uint32_t mode)
{

 E6000SW_LOCK_ASSERT(sc, SA_XLOCKED);
 switch (mode) {
 case 128:
  sc->vlan_mode = 128;
  etherswitch_info.es_nvlangroups = sc->num_ports;
  return (e6000sw_init_vlan(sc));
  break;
 case 129:
  sc->vlan_mode = 129;
  etherswitch_info.es_nvlangroups = E6000SW_NUM_VLANS;
  return (e6000sw_init_vlan(sc));
  break;
 default:
  return (EINVAL);
 }
}
