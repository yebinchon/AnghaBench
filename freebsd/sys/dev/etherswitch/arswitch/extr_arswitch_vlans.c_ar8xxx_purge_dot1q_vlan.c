
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;


 int AR8X16_VLAN_OP_PURGE ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int ar8xxx_vlan_op (struct arswitch_softc*,int ,int,int ) ;

int
ar8xxx_purge_dot1q_vlan(struct arswitch_softc *sc, int vid)
{

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 return (ar8xxx_vlan_op(sc, AR8X16_VLAN_OP_PURGE, vid, 0));
}
