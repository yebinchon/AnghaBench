
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int es_nvlangroups; } ;
struct mtkswitch_softc {scalar_t__ vlan_mode; scalar_t__ sc_switchtype; int valid_vlans; TYPE_1__ info; } ;
struct TYPE_5__ {int es_vlangroup; int es_untagged_ports; int es_member_ports; int es_vid; } ;
typedef TYPE_2__ etherswitch_vlangroup_t ;


 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ;
 int MA_NOTOWNED ;
 int MTKSWITCH_LOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_LOCK_ASSERT (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_POC2 ;
 int MTKSWITCH_READ (struct mtkswitch_softc*,int ) ;
 int MTKSWITCH_UNLOCK (struct mtkswitch_softc*) ;
 int MTKSWITCH_VLANI (int) ;
 int MTKSWITCH_VMSC (int) ;
 int MTKSWITCH_VUB (int) ;
 int MTKSWITCH_WRITE (struct mtkswitch_softc*,int ,int) ;
 scalar_t__ MTK_SWITCH_RT3050 ;
 int POC2_UNTAG_VLAN ;
 int VLANI_MASK ;
 int VLANI_OFF (int) ;
 int VMSC_MASK ;
 int VMSC_OFF (int) ;
 int VUB_MASK ;
 int VUB_OFF (int) ;

__attribute__((used)) static int
mtkswitch_vlan_setvgroup(struct mtkswitch_softc *sc, etherswitch_vlangroup_t *v)
{
 uint32_t val, tmp;

 if ((sc->vlan_mode != ETHERSWITCH_VLAN_DOT1Q) ||
     (v->es_vlangroup > sc->info.es_nvlangroups))
  return (EINVAL);

 MTKSWITCH_LOCK_ASSERT(sc, MA_NOTOWNED);
 MTKSWITCH_LOCK(sc);

 val = MTKSWITCH_READ(sc, MTKSWITCH_POC2);
 if (sc->sc_switchtype == MTK_SWITCH_RT3050 ||
     (val & POC2_UNTAG_VLAN) == 0) {
  val &= VUB_MASK;


  tmp = v->es_untagged_ports & v->es_member_ports;

  if (tmp != v->es_untagged_ports) {

   MTKSWITCH_UNLOCK(sc);
   return (ENOTSUP);
  }


  if ((tmp & val) != tmp) {

   MTKSWITCH_UNLOCK(sc);
   return (ENOTSUP);
  }


  tmp = v->es_member_ports & ~tmp;

  if ((tmp & val) != 0) {

   MTKSWITCH_UNLOCK(sc);
   return (ENOTSUP);
  }
 } else {

  val = MTKSWITCH_READ(sc, MTKSWITCH_VUB(v->es_vlangroup));
  val &= ~(VUB_MASK << VUB_OFF(v->es_vlangroup));
  val |= (((v->es_untagged_ports) & VUB_MASK) <<
      VUB_OFF(v->es_vlangroup));
  MTKSWITCH_WRITE(sc, MTKSWITCH_VUB(v->es_vlangroup), val);
 }


 val = MTKSWITCH_READ(sc, MTKSWITCH_VLANI(v->es_vlangroup));
 val &= ~(VLANI_MASK << VLANI_OFF(v->es_vlangroup));
 val |= (v->es_vid & VLANI_MASK) << VLANI_OFF(v->es_vlangroup);
 MTKSWITCH_WRITE(sc, MTKSWITCH_VLANI(v->es_vlangroup), val);


 val = MTKSWITCH_READ(sc, MTKSWITCH_VMSC(v->es_vlangroup));
 val &= ~(VMSC_MASK << VMSC_OFF(v->es_vlangroup));
 val |= (v->es_member_ports << VMSC_OFF(v->es_vlangroup));
 MTKSWITCH_WRITE(sc, MTKSWITCH_VMSC(v->es_vlangroup), val);

 sc->valid_vlans |= (1<<v->es_vlangroup);

 MTKSWITCH_UNLOCK(sc);
 return (0);
}
