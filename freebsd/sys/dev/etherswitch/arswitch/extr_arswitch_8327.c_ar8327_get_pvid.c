
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8327_PORT_VLAN0_DEF_CVID_S ;
 int AR8327_REG_PORT_VLAN0 (int) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ETHERSWITCH_VID_MASK ;
 int MA_OWNED ;
 int arswitch_readreg (int ,int ) ;

__attribute__((used)) static int
ar8327_get_pvid(struct arswitch_softc *sc, int port, int *pvid)
{
 uint32_t reg;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);




 port = port & ETHERSWITCH_VID_MASK;
 reg = arswitch_readreg(sc->sc_dev, AR8327_REG_PORT_VLAN0(port));
 reg = reg >> AR8327_PORT_VLAN0_DEF_CVID_S;
 reg = reg & 0xfff;

 *pvid = reg;
 return (0);
}
