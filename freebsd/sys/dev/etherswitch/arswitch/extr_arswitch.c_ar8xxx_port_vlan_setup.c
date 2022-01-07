
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int (* arswitch_vlan_set_pvid ) (struct arswitch_softc*,int ,int ) ;} ;
struct arswitch_softc {int sc_dev; TYPE_1__ hal; } ;
struct TYPE_5__ {int es_flags; int es_port; int es_pvid; } ;
typedef TYPE_2__ etherswitch_port_t ;


 int AR8X16_PORT_CTRL_DOUBLE_TAG ;
 int AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_ADD ;
 int AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT ;
 int AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_STRIP ;
 int AR8X16_REG_PORT_CTRL (int ) ;
 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int EINVAL ;
 int ETHERSWITCH_PORT_ADDTAG ;
 int ETHERSWITCH_PORT_DOUBLE_TAG ;
 int ETHERSWITCH_PORT_STRIPTAG ;
 int arswitch_modifyreg (int ,int ,int,int) ;
 int stub1 (struct arswitch_softc*,int ,int ) ;

__attribute__((used)) static int
ar8xxx_port_vlan_setup(struct arswitch_softc *sc, etherswitch_port_t *p)
{
 uint32_t reg;
 int err;

 ARSWITCH_LOCK(sc);


 if (p->es_pvid != 0)
  sc->hal.arswitch_vlan_set_pvid(sc, p->es_port, p->es_pvid);


 if (p->es_flags & ETHERSWITCH_PORT_ADDTAG &&
     p->es_flags & ETHERSWITCH_PORT_STRIPTAG) {
  ARSWITCH_UNLOCK(sc);
  return (EINVAL);
 }

 reg = 0;
 if (p->es_flags & ETHERSWITCH_PORT_DOUBLE_TAG)
  reg |= AR8X16_PORT_CTRL_DOUBLE_TAG;
 if (p->es_flags & ETHERSWITCH_PORT_ADDTAG)
  reg |= AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_ADD <<
      AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT;
 if (p->es_flags & ETHERSWITCH_PORT_STRIPTAG)
  reg |= AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_STRIP <<
      AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT;

 err = arswitch_modifyreg(sc->sc_dev,
     AR8X16_REG_PORT_CTRL(p->es_port),
     0x3 << AR8X16_PORT_CTRL_EGRESS_VLAN_MODE_SHIFT |
     AR8X16_PORT_CTRL_DOUBLE_TAG, reg);

 ARSWITCH_UNLOCK(sc);
 return (err);
}
