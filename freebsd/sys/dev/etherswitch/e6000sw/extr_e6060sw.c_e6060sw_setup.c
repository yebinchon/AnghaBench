
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int numports; scalar_t__ sw_model; scalar_t__ smi_offset; } ;
typedef int device_t ;


 scalar_t__ CORE_REGISTER ;
 scalar_t__ E6063 ;
 scalar_t__ E6065 ;
 int ENGRESSFSHIFT ;
 int FORCEMAPMASK ;
 int FORCEMAPSHIFT ;
 int MDIO_READREG (int ,scalar_t__,int ) ;
 int MDIO_WRITEREG (int ,scalar_t__,int ,int) ;
 int PORT_CONTROL ;
 int PORT_VLAN_MAP ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;

__attribute__((used)) static void
e6060sw_setup(device_t dev)
{
 struct e6060sw_softc *sc;
 int i;
 int data;

 sc = device_get_softc(dev);

 for (i = 0; i <= sc->numports; i++) {
  if (sc->sw_model == E6063 || sc->sw_model == E6065) {
   data = MDIO_READREG(device_get_parent(dev),
       CORE_REGISTER + sc->smi_offset + i, PORT_VLAN_MAP);
   data &= ~(FORCEMAPMASK << FORCEMAPSHIFT);
   MDIO_WRITEREG(device_get_parent(dev),
       CORE_REGISTER + sc->smi_offset + i,
       PORT_VLAN_MAP, data);

   data = MDIO_READREG(device_get_parent(dev),
       CORE_REGISTER + sc->smi_offset + i, PORT_CONTROL);
   data |= 3 << ENGRESSFSHIFT;
   MDIO_WRITEREG(device_get_parent(dev),
       CORE_REGISTER + sc->smi_offset + i,
       PORT_CONTROL, data);
  }
 }
}
