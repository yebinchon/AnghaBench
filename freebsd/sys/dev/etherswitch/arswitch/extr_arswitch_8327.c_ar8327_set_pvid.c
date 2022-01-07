
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct arswitch_softc {int sc_dev; } ;


 int AR8327_PORT_VLAN0_DEF_CVID_S ;
 int AR8327_PORT_VLAN0_DEF_SVID_S ;
 int AR8327_REG_PORT_VLAN0 (int) ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static int
ar8327_set_pvid(struct arswitch_softc *sc, int port, int pvid)
{
 uint32_t t;


 pvid &= 0x7f;

 t = pvid << AR8327_PORT_VLAN0_DEF_SVID_S;
 t |= pvid << AR8327_PORT_VLAN0_DEF_CVID_S;
 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_VLAN0(port), t);

 return (0);
}
