
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct e6060sw_softc {scalar_t__ vlan_mode; scalar_t__ smi_offset; } ;
struct TYPE_3__ {scalar_t__ es_vlangroup; int es_member_ports; int es_untagged_ports; } ;
typedef TYPE_1__ etherswitch_vlangroup_t ;
typedef int device_t ;


 scalar_t__ CORE_REGISTER ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int MDIO_READREG (int ,scalar_t__,int ) ;
 int MDIO_WRITEREG (int ,scalar_t__,int ,int) ;
 int PORT_VLAN_MAP ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;
 int e6060sw_set_vtu (int ,scalar_t__,int,int) ;

__attribute__((used)) static int
e6060sw_setvgroup(device_t dev, etherswitch_vlangroup_t *vg)
{
 struct e6060sw_softc *sc;
 int data1, data2;
 int i;

 sc = device_get_softc(dev);

 if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT) {
  data1 = MDIO_READREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + vg->es_vlangroup,
      PORT_VLAN_MAP);
  data1 &= ~0x3f;
  data1 |= vg->es_member_ports;
  MDIO_WRITEREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + vg->es_vlangroup,
      PORT_VLAN_MAP, data1);
 } else if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  if (vg->es_vlangroup == 0)
   return (0);
  data1 = 0;
  data2 = 0;
  for (i = 0; i < 6; ++i) {
   if (vg->es_member_ports &
       vg->es_untagged_ports & (1 << i)) {
    if (i < 4) {
     data1 |= (0xd << i * 4);
    } else {
     data2 |= (0xd << (i - 4) * 4);
    }
   } else if (vg->es_member_ports & (1 << i)) {
    if (i < 4) {
     data1 |= (0xe << i * 4);
    } else {
     data2 |= (0xe << (i - 4) * 4);
    }
   } else {
    if (i < 4) {
     data1 |= (0x3 << i * 4);
    } else {
     data2 |= (0x3 << (i - 4) * 4);
    }
   }
  }
  e6060sw_set_vtu(dev, vg->es_vlangroup, data1, data2);
 }
 return (0);
}
