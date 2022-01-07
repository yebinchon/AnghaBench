
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int numports; scalar_t__ smi_offset; } ;
typedef int device_t ;


 scalar_t__ CORE_REGISTER ;
 int DOT1QMODEMASK ;
 int DOT1QMODESHIFT ;
 int MDIO_READREG (int ,scalar_t__,int ) ;
 int MDIO_WRITEREG (int ,scalar_t__,int ,int) ;
 int PORT_CONTROL2 ;
 int PORT_DEFVLAN ;
 int device_get_parent (int ) ;
 struct e6060sw_softc* device_get_softc (int ) ;

__attribute__((used)) static void
e6060sw_dot1q_mode(device_t dev, int mode)
{
 struct e6060sw_softc *sc;
 int i;
 int data;

 sc = device_get_softc(dev);

 for (i = 0; i <= sc->numports; i++) {
  data = MDIO_READREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + i, PORT_CONTROL2);
  data &= ~(DOT1QMODEMASK << DOT1QMODESHIFT);
  data |= mode << DOT1QMODESHIFT;
  MDIO_WRITEREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + i, PORT_CONTROL2, data);

  data = MDIO_READREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + i,
      PORT_DEFVLAN);
  data &= ~0xfff;
  data |= 1;
  MDIO_WRITEREG(device_get_parent(dev),
      CORE_REGISTER + sc->smi_offset + i,
      PORT_DEFVLAN, data);
 }
}
