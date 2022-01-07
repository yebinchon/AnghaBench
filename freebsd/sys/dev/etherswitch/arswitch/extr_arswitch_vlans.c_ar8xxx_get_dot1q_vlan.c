
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int numphys; int sc_dev; } ;


 int AR8X16_REG_VLAN_DATA ;
 int AR8X16_VLAN_OP_GET ;
 int AR8X16_VLAN_VALID ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int EINVAL ;
 int MA_OWNED ;
 int ar8xxx_vlan_op (struct arswitch_softc*,int ,int,int ) ;
 int arswitch_readreg (int ,int ) ;

int
ar8xxx_get_dot1q_vlan(struct arswitch_softc *sc, uint32_t *ports,
    uint32_t *untagged_ports, int vid)
{
 uint32_t reg;
 int err;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 err = ar8xxx_vlan_op(sc, AR8X16_VLAN_OP_GET, vid, 0);
 if (err)
  return (err);

 reg = arswitch_readreg(sc->sc_dev, AR8X16_REG_VLAN_DATA);
 if ((reg & AR8X16_VLAN_VALID) == 0) {
  *ports = 0;
  return (EINVAL);
 }
 reg &= ((1 << (sc->numphys + 1)) - 1);
 *ports = reg;
 *untagged_ports = reg;
 return (0);
}
