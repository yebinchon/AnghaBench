
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
 int arswitch_modifyreg (int ,int ,int,int) ;

int
ar8xxx_set_port_vlan(struct arswitch_softc *sc, uint32_t ports, int vid)
{
 int err, port;

 ARSWITCH_LOCK_ASSERT(sc, MA_OWNED);

 port = vid & ETHERSWITCH_VID_MASK;
 err = arswitch_modifyreg(sc->sc_dev, AR8X16_REG_PORT_VLAN(port),
     AR8X16_VLAN_MEMBER << AR8X16_PORT_VLAN_DEST_PORTS_SHIFT,
     (ports & AR8X16_VLAN_MEMBER) << AR8X16_PORT_VLAN_DEST_PORTS_SHIFT);
 if (err)
  return (err);
 return (0);
}
