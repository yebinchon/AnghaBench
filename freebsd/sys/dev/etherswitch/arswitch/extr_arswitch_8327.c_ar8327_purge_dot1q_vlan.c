
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;


 int AR8327_VTU_FUNC1_OP_PURGE ;
 int ar8327_vlan_op (struct arswitch_softc*,int ,int,int ) ;

__attribute__((used)) static int
ar8327_purge_dot1q_vlan(struct arswitch_softc *sc, int vid)
{

 return (ar8327_vlan_op(sc, AR8327_VTU_FUNC1_OP_PURGE, vid, 0));
}
