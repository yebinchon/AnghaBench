
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arswitch_softc {int sc_dev; } ;


 int AR8X16_REG_PORT_VLAN (int) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int arswitch_modifyreg (int ,int ,int,int) ;

int
ar8xxx_set_pvid(struct arswitch_softc *sc, int port, int pvid)
{

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 return (arswitch_modifyreg(sc->sc_dev,
     AR8X16_REG_PORT_VLAN(port), 0xfff, pvid));
}
