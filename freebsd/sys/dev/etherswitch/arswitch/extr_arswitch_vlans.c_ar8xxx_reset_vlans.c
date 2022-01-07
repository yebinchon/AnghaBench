
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int (* arswitch_set_dot1q_vlan ) (struct arswitch_softc*,int,int,int) ;int (* arswitch_vlan_set_pvid ) (struct arswitch_softc*,int,int) ;scalar_t__ (* arswitch_flush_dot1q_vlan ) (struct arswitch_softc*) ;} ;
struct arswitch_softc {int* vid; int numphys; scalar_t__ vlan_mode; int sc_dev; TYPE_1__ hal; } ;


 int AR8X16_PORT_CTRL_DOUBLE_TAG ;
 int AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT ;
 int AR8X16_PORT_VLAN_DEST_PORTS_SHIFT ;
 int AR8X16_PORT_VLAN_MODE_MASK ;
 int AR8X16_PORT_VLAN_MODE_PORT_ONLY ;
 int AR8X16_PORT_VLAN_MODE_SECURE ;
 int AR8X16_PORT_VLAN_MODE_SHIFT ;
 int AR8X16_REG_PORT_CTRL (int) ;
 int AR8X16_REG_PORT_VLAN (int) ;
 int AR8X16_VLAN_MEMBER ;
 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int ETHERSWITCH_VID_VALID ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 scalar_t__ ETHERSWITCH_VLAN_PORT ;
 int MA_NOTOWNED ;
 scalar_t__ arswitch_modifyreg (int ,int ,int,int) ;
 int memset (int*,int ,int) ;
 scalar_t__ stub1 (struct arswitch_softc*) ;
 int stub2 (struct arswitch_softc*,int,int) ;
 int stub3 (struct arswitch_softc*,int,int,int) ;

void
ar8xxx_reset_vlans(struct arswitch_softc *sc)
{
 uint32_t ports;
 int i, j;

 ARSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);

 ARSWITCH_LOCK(sc);


 memset(sc->vid, 0, sizeof(sc->vid));


 for (i = 0; i <= sc->numphys; i++) {
  if (arswitch_modifyreg(sc->sc_dev, AR8X16_REG_PORT_CTRL(i),
      0x3 << AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT |
      AR8X16_PORT_CTRL_DOUBLE_TAG, 0)) {
   ARSWITCH_UNLOCK(sc);
   return;
  }
 }

 if (sc->hal.arswitch_flush_dot1q_vlan(sc)) {
  ARSWITCH_UNLOCK(sc);
  return;
 }

 if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {




  ports = 0;
  for (i = 0; i <= sc->numphys; i++)
   arswitch_modifyreg(sc->sc_dev,
       AR8X16_REG_PORT_VLAN(i),
       AR8X16_PORT_VLAN_MODE_MASK |
       AR8X16_VLAN_MEMBER <<
       AR8X16_PORT_VLAN_DEST_PORTS_SHIFT,
       AR8X16_PORT_VLAN_MODE_SECURE <<
       AR8X16_PORT_VLAN_MODE_SHIFT);





  sc->vid[0] = 1;

  for (i = 0; i <= sc->numphys; i++)
   sc->hal.arswitch_vlan_set_pvid(sc, i, sc->vid[0]);
  ports = 0;
  for (i = 0; i <= sc->numphys; i++)
   ports |= (1 << i);
  sc->hal.arswitch_set_dot1q_vlan(sc, ports, sc->vid[0], sc->vid[0]);
  sc->vid[0] |= ETHERSWITCH_VID_VALID;
 } else if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT) {

  for (i = 0; i <= sc->numphys; i++) {
   sc->vid[i] = i | ETHERSWITCH_VID_VALID;
   ports = 0;
   for (j = 0; j <= sc->numphys; j++)
    ports |= (1 << j);
   arswitch_modifyreg(sc->sc_dev,
       AR8X16_REG_PORT_VLAN(i),
       AR8X16_PORT_VLAN_MODE_MASK |
       AR8X16_VLAN_MEMBER <<
       AR8X16_PORT_VLAN_DEST_PORTS_SHIFT,
       ports << AR8X16_PORT_VLAN_DEST_PORTS_SHIFT |
       AR8X16_PORT_VLAN_MODE_SECURE <<
       AR8X16_PORT_VLAN_MODE_PORT_ONLY);

  }
 } else {

  for (i = 0; i <= sc->numphys; i++)
   arswitch_modifyreg(sc->sc_dev,
       AR8X16_REG_PORT_VLAN(i),
       AR8X16_PORT_VLAN_MODE_MASK |
       AR8X16_VLAN_MEMBER <<
       AR8X16_PORT_VLAN_DEST_PORTS_SHIFT,
       AR8X16_VLAN_MEMBER <<
       AR8X16_PORT_VLAN_DEST_PORTS_SHIFT |
       AR8X16_PORT_VLAN_MODE_SECURE <<
       AR8X16_PORT_VLAN_MODE_PORT_ONLY);
 }
 ARSWITCH_UNLOCK(sc);
}
