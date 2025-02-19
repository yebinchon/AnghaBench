
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8X16_REG_VLAN_CTRL ;
 int AR8X16_REG_VLAN_DATA ;
 int AR8X16_VLAN_ACTIVE ;
 int AR8X16_VLAN_MEMBER ;
 int AR8X16_VLAN_OP_LOAD ;
 int AR8X16_VLAN_VALID ;
 int AR8X16_VLAN_VID_SHIFT ;
 int EBUSY ;
 int ETHERSWITCH_VID_MASK ;
 scalar_t__ arswitch_waitreg (int ,int ,int,int ,int) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static int
ar8xxx_vlan_op(struct arswitch_softc *sc, uint32_t op, uint32_t vid,
 uint32_t data)
{
 int err;

 if (arswitch_waitreg(sc->sc_dev, AR8X16_REG_VLAN_CTRL,
     AR8X16_VLAN_ACTIVE, 0, 5))
  return (EBUSY);


 if (op == AR8X16_VLAN_OP_LOAD) {
  err = arswitch_writereg(sc->sc_dev, AR8X16_REG_VLAN_DATA,
      (data & AR8X16_VLAN_MEMBER) | AR8X16_VLAN_VALID);
  if (err)
   return (err);
 }

 if (vid != 0)
  op |= ((vid & ETHERSWITCH_VID_MASK) << AR8X16_VLAN_VID_SHIFT);
 op |= AR8X16_VLAN_ACTIVE;
 arswitch_writereg(sc->sc_dev, AR8X16_REG_VLAN_CTRL, op);


 if (arswitch_waitreg(sc->sc_dev, AR8X16_REG_VLAN_CTRL,
     AR8X16_VLAN_ACTIVE, 0, 5))
  return (EBUSY);

 return (0);
}
