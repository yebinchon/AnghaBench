
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* arswitch_purge_dot1q_vlan ) (struct arswitch_softc*,int) ;int (* arswitch_set_dot1q_vlan ) (struct arswitch_softc*,int ,int ,int) ;int (* arswitch_set_port_vlan ) (struct arswitch_softc*,int ,int) ;} ;
struct arswitch_softc {int vlan_mode; int* vid; TYPE_1__ hal; } ;
struct TYPE_5__ {size_t es_vlangroup; int es_vid; int es_member_ports; int es_untagged_ports; } ;
typedef TYPE_2__ etherswitch_vlangroup_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int EINVAL ;
 int ETHERSWITCH_VID_MASK ;
 int ETHERSWITCH_VID_VALID ;


 int MA_NOTOWNED ;
 int stub1 (struct arswitch_softc*,int) ;
 int stub2 (struct arswitch_softc*,int ,int ,int) ;
 int stub3 (struct arswitch_softc*,int ,int) ;

int
ar8xxx_setvgroup(struct arswitch_softc *sc, etherswitch_vlangroup_t *vg)
{
 int err, vid;

 ARSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);


 if (sc->vlan_mode == 0)
  return (EINVAL);





 ARSWITCH_LOCK(sc);
 vid = sc->vid[vg->es_vlangroup];
 if (sc->vlan_mode == 129 &&
     (vid & ETHERSWITCH_VID_VALID) != 0 &&
     (vid & ETHERSWITCH_VID_MASK) !=
     (vg->es_vid & ETHERSWITCH_VID_MASK)) {
  err = sc->hal.arswitch_purge_dot1q_vlan(sc, vid);
  if (err) {
   ARSWITCH_UNLOCK(sc);
   return (err);
  }
 }


 if (sc->vlan_mode == 129) {
  sc->vid[vg->es_vlangroup] = vg->es_vid & ETHERSWITCH_VID_MASK;

  if (sc->vid[vg->es_vlangroup] == 0) {
   ARSWITCH_UNLOCK(sc);
   return (0);
  }
  sc->vid[vg->es_vlangroup] |= ETHERSWITCH_VID_VALID;
  vid = sc->vid[vg->es_vlangroup];
 }


 switch (sc->vlan_mode) {
 case 129:
  err = sc->hal.arswitch_set_dot1q_vlan(sc, vg->es_member_ports,
      vg->es_untagged_ports, vid);
  break;
 case 128:
  err = sc->hal.arswitch_set_port_vlan(sc, vg->es_member_ports, vid);
  break;
 default:
  err = -1;
 }
 ARSWITCH_UNLOCK(sc);
 return (err);
}
