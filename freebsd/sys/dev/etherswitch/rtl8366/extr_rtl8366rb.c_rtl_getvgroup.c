
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct rtl8366rb_softc {scalar_t__ phy4cpu; int * vid; } ;
struct TYPE_3__ {size_t es_vlangroup; int es_member_ports; int es_untagged_ports; int es_fid; int es_vid; } ;
typedef TYPE_1__ etherswitch_vlangroup_t ;
typedef int device_t ;


 int RTL8366_VMCR (int,size_t) ;
 int RTL8366_VMCR_FID (int *) ;
 int RTL8366_VMCR_MEMBER (int *) ;
 int RTL8366_VMCR_MULT ;
 int RTL8366_VMCR_UNTAG (int *) ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int rtl_readreg (int ,int ) ;

__attribute__((used)) static int
rtl_getvgroup(device_t dev, etherswitch_vlangroup_t *vg)
{
 struct rtl8366rb_softc *sc;
 uint16_t vmcr[3];
 int i;
 int member, untagged;

 sc = device_get_softc(dev);

 for (i=0; i<RTL8366_VMCR_MULT; i++)
  vmcr[i] = rtl_readreg(dev, RTL8366_VMCR(i, vg->es_vlangroup));

 vg->es_vid = sc->vid[vg->es_vlangroup];
 member = RTL8366_VMCR_MEMBER(vmcr);
 untagged = RTL8366_VMCR_UNTAG(vmcr);
 if (sc->phy4cpu) {
  vg->es_member_ports = ((member & 0x20) >> 1) | (member & 0x0f);
  vg->es_untagged_ports = ((untagged & 0x20) >> 1) | (untagged & 0x0f);
 } else {
  vg->es_member_ports = member;
  vg->es_untagged_ports = untagged;
 }
 vg->es_fid = RTL8366_VMCR_FID(vmcr);
 return (0);
}
