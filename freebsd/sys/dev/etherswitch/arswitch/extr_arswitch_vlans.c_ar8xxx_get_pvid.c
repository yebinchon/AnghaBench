
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8X16_REG_PORT_VLAN (int) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int MA_OWNED ;
 int arswitch_readreg (int ,int ) ;

int
ar8xxx_get_pvid(struct arswitch_softc *sc, int port, int *pvid)
{
 uint32_t reg;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);
 reg = arswitch_readreg(sc->sc_dev, AR8X16_REG_PORT_VLAN(port));
 *pvid = reg & 0xfff;
 return (0);
}
