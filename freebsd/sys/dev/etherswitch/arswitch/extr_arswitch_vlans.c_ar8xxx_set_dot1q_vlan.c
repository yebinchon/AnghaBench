
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int dummy; } ;


 int AR8X16_VLAN_OP_LOAD ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int ar8xxx_vlan_op (struct arswitch_softc*,int ,int,int ) ;

int
ar8xxx_set_dot1q_vlan(struct arswitch_softc *sc, uint32_t ports,
    uint32_t untagged_ports, int vid)
{
 int err;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 err = ar8xxx_vlan_op(sc, AR8X16_VLAN_OP_LOAD, vid, ports);
 if (err)
  return (err);
 return (0);
}
