
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ether_addr {int dummy; } ;
struct arswitch_softc {int dummy; } ;


 int ENXIO ;

__attribute__((used)) static int
ar8xxx_hw_set_switch_macaddr(struct arswitch_softc *sc,
    const struct ether_addr *ea)
{

 return (ENXIO);
}
