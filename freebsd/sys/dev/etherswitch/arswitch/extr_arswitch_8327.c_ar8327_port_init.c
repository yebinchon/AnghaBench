
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int port0_status; int port6_status; } ;
struct arswitch_softc {int sc_dev; TYPE_1__ ar8327; } ;


 int AR8327_PORT_LOOKUP_LEARN ;
 int AR8327_PORT_LOOKUP_STATE_S ;
 int AR8327_PORT_VLAN0_DEF_CVID_S ;
 int AR8327_PORT_VLAN0_DEF_SVID_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ;
 int AR8327_REG_PORT_HEADER (int) ;
 int AR8327_REG_PORT_LOOKUP (int) ;
 int AR8327_REG_PORT_STATUS (int) ;
 int AR8327_REG_PORT_VLAN0 (int) ;
 int AR8327_REG_PORT_VLAN1 (int) ;
 int AR8X16_PORT_CPU ;
 int AR8X16_PORT_CTRL_STATE_FORWARD ;
 int AR8X16_PORT_STS_LINK_AUTO ;
 int arswitch_writereg (int ,int ,int) ;

__attribute__((used)) static void
ar8327_port_init(struct arswitch_softc *sc, int port)
{
 uint32_t t;
 int ports;


 ports = 0x7f;

 if (port == AR8X16_PORT_CPU)
  t = sc->ar8327.port0_status;
 else if (port == 6)
  t = sc->ar8327.port6_status;
        else
  t = AR8X16_PORT_STS_LINK_AUTO;

 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_STATUS(port), t);
 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_HEADER(port), 0);




 t = 1 << AR8327_PORT_VLAN0_DEF_SVID_S;
 t |= 1 << AR8327_PORT_VLAN0_DEF_CVID_S;
 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_VLAN0(port), t);

 t = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH << AR8327_PORT_VLAN1_OUT_MODE_S;
 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_VLAN1(port), t);
 t = AR8327_PORT_LOOKUP_LEARN;
 t |= AR8X16_PORT_CTRL_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;


 t |= (ports & ~(1 << port));
 arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_LOOKUP(port), t);
}
