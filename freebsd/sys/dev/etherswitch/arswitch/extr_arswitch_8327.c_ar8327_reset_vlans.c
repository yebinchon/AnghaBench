
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* arswitch_set_dot1q_vlan ) (struct arswitch_softc*,int,int,int) ;int (* arswitch_vlan_set_pvid ) (struct arswitch_softc*,int,int) ;} ;
struct arswitch_softc {int* vid; scalar_t__ vlan_mode; TYPE_1__ hal; int sc_dev; } ;


 int AR8327_FWD_CTRL0_MIRROR_PORT ;
 int AR8327_FWD_CTRL0_MIRROR_PORT_S ;
 int AR8327_NUM_PORTS ;
 int AR8327_PORT_LOOKUP_IN_MODE_S ;
 int AR8327_PORT_LOOKUP_LEARN ;
 int AR8327_PORT_LOOKUP_STATE_S ;
 int AR8327_PORT_VLAN0_DEF_CVID_S ;
 int AR8327_PORT_VLAN0_DEF_SVID_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_S ;
 int AR8327_PORT_VLAN1_OUT_MODE_UNMOD ;
 int AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH ;
 int AR8327_PORT_VLAN1_PORT_VLAN_PROP ;
 int AR8327_REG_FWD_CTRL0 ;
 int AR8327_REG_PORT_LOOKUP (int) ;
 int AR8327_REG_PORT_VLAN0 (int) ;
 int AR8327_REG_PORT_VLAN1 (int) ;
 int AR8X16_PORT_CTRL_STATE_FORWARD ;
 int AR8X16_PORT_VLAN_MODE_PORT_ONLY ;
 int AR8X16_PORT_VLAN_MODE_SECURE ;
 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int ETHERSWITCH_VID_VALID ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int MA_NOTOWNED ;
 int ar8327_port_disable_mirror (struct arswitch_softc*,int) ;
 int arswitch_modifyreg (int ,int ,int ,int) ;
 int arswitch_writereg (int ,int ,int) ;
 int memset (int*,int ,int) ;
 int stub1 (struct arswitch_softc*,int,int) ;
 int stub2 (struct arswitch_softc*,int,int,int) ;

__attribute__((used)) static void
ar8327_reset_vlans(struct arswitch_softc *sc)
{
 int i;
 uint32_t t;
 int ports;

 ARSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 ARSWITCH_LOCK(sc);


 memset(sc->vid, 0, sizeof(sc->vid));




 arswitch_modifyreg(sc->sc_dev, AR8327_REG_FWD_CTRL0,
     AR8327_FWD_CTRL0_MIRROR_PORT,
     (0xF << AR8327_FWD_CTRL0_MIRROR_PORT_S));
 ports = 0x7f;




 for (i = 0; i < AR8327_NUM_PORTS; i++) {
  int egress, ingress;

  if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT) {
   sc->vid[i] = i | ETHERSWITCH_VID_VALID;

   ingress = AR8X16_PORT_VLAN_MODE_PORT_ONLY;

   egress = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH;
  } else if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
   ingress = AR8X16_PORT_VLAN_MODE_SECURE;
   egress = AR8327_PORT_VLAN1_OUT_MODE_UNMOD;
  } else {

   ingress = AR8X16_PORT_VLAN_MODE_PORT_ONLY;

   egress = AR8327_PORT_VLAN1_OUT_MODE_UNTOUCH;
  }


  t = 1 << AR8327_PORT_VLAN0_DEF_SVID_S;
  t |= 1 << AR8327_PORT_VLAN0_DEF_CVID_S;
  arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_VLAN0(i), t);

  t = AR8327_PORT_VLAN1_PORT_VLAN_PROP;
  t |= egress << AR8327_PORT_VLAN1_OUT_MODE_S;
  arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_VLAN1(i), t);



  t = (ports & ~(1 << i));
  t |= AR8327_PORT_LOOKUP_LEARN;

  t |= ingress << AR8327_PORT_LOOKUP_IN_MODE_S;
  t |= AR8X16_PORT_CTRL_STATE_FORWARD << AR8327_PORT_LOOKUP_STATE_S;
  arswitch_writereg(sc->sc_dev, AR8327_REG_PORT_LOOKUP(i), t);
 }




 for (i = 0; i < AR8327_NUM_PORTS; i++) {
  ar8327_port_disable_mirror(sc, i);
 }




 if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
  sc->vid[0] = 1;
  for (i = 0; i < AR8327_NUM_PORTS; i++) {

   sc->hal.arswitch_vlan_set_pvid(sc, i, sc->vid[0]);
  }

  sc->hal.arswitch_set_dot1q_vlan(sc, ports, ports, sc->vid[0]);
  sc->vid[0] |= ETHERSWITCH_VID_VALID;
 }

 ARSWITCH_UNLOCK(sc);
}
