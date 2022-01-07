
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8X16_PORT_VLAN_DEST_PORTS_SHIFT ;
 int AR8X16_REG_PORT_VLAN (int) ;
 int AR8X16_VLAN_MEMBER ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ETHERSWITCH_VID_MASK ;
 int MA_OWNED ;
 int arswitch_readreg (int ,int ) ;

int
ar8xxx_get_port_vlan(struct arswitch_softc *sc, uint32_t *ports, int vid)
{
 int port;
 uint32_t reg;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);

 port = vid & ETHERSWITCH_VID_MASK;
 reg = arswitch_readreg(sc->sc_dev, AR8X16_REG_PORT_VLAN(port));
 *ports = (reg >> AR8X16_PORT_VLAN_DEST_PORTS_SHIFT);
 *ports &= AR8X16_VLAN_MEMBER;
 return (0);
}
