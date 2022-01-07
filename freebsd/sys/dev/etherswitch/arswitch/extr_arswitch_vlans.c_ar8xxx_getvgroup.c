
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int (* arswitch_get_dot1q_vlan ) (struct arswitch_softc*,scalar_t__*,scalar_t__*,int) ;int (* arswitch_get_port_vlan ) (struct arswitch_softc*,scalar_t__*,int) ;} ;
struct TYPE_5__ {size_t es_nvlangroups; } ;
struct arswitch_softc {int* vid; int vlan_mode; TYPE_2__ hal; TYPE_1__ info; } ;
struct TYPE_7__ {size_t es_vlangroup; int es_vid; scalar_t__ es_untagged_ports; scalar_t__ es_member_ports; scalar_t__ es_fid; } ;
typedef TYPE_3__ etherswitch_vlangroup_t ;


 int ARSWITCH_LOCK (struct arswitch_softc*) ;
 int ARSWITCH_LOCK_ASSERT (struct arswitch_softc*,int ) ;
 int ARSWITCH_UNLOCK (struct arswitch_softc*) ;
 int EINVAL ;
 int ETHERSWITCH_VID_VALID ;


 int MA_NOTOWNED ;
 int stub1 (struct arswitch_softc*,scalar_t__*,scalar_t__*,int) ;
 int stub2 (struct arswitch_softc*,scalar_t__*,int) ;

int
ar8xxx_getvgroup(struct arswitch_softc *sc, etherswitch_vlangroup_t *vg)
{
 int err;

 ARSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);

 if (vg->es_vlangroup > sc->info.es_nvlangroups)
  return (EINVAL);


 vg->es_untagged_ports = 0;
 vg->es_member_ports = 0;


 vg->es_fid = 0;


 ARSWITCH_LOCK(sc);
 vg->es_vid = sc->vid[vg->es_vlangroup];
 if ((vg->es_vid & ETHERSWITCH_VID_VALID) == 0) {
  ARSWITCH_UNLOCK(sc);
  return (0);
 }


 switch (sc->vlan_mode) {
 case 129:
  err = sc->hal.arswitch_get_dot1q_vlan(sc, &vg->es_member_ports,
      &vg->es_untagged_ports,
      vg->es_vid);
  break;
 case 128:
  err = sc->hal.arswitch_get_port_vlan(sc, &vg->es_member_ports,
      vg->es_vid);
  vg->es_untagged_ports = vg->es_member_ports;
  break;
 default:
  vg->es_member_ports = 0;
  vg->es_untagged_ports = 0;
  err = -1;
 }
 ARSWITCH_UNLOCK(sc);

 return (err);
}
