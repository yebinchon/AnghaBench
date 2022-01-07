
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int dummy; } ;
typedef int etherswitch_vlangroup_t ;


 int ar8xxx_setvgroup (struct arswitch_softc*,int *) ;

__attribute__((used)) static int
ar8327_vlan_setvgroup(struct arswitch_softc *sc, etherswitch_vlangroup_t *vg)
{

 return (ar8xxx_setvgroup(sc, vg));
}
