
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8366rb_softc {int* vid; } ;
typedef int device_t ;


 int DELAY (int) ;
 int ETHERSWITCH_VID_VALID ;
 int RTL8366_PVCR_PORT_MASK ;
 int RTL8366_PVCR_REG (int ) ;
 int RTL8366_PVCR_VAL (int ,int) ;
 int RTL8366_RCR ;
 int RTL8366_RCR_HARD_RESET ;
 int RTL8366_RCR_SOFT_RESET ;
 int RTL8366_SGCR ;
 int RTL8366_SGCR_EN_VLAN ;
 int RTL8366_SGCR_EN_VLAN_4KTB ;
 int RTL8366_VMCR (int ,int) ;
 int RTL8366_VMCR_MU_MEMBER_SHIFT ;
 int RTL8366_VMCR_MU_REG ;
 int RTL8366_VMCR_MU_UNTAG_SHIFT ;
 int RTL_WAITOK ;
 struct rtl8366rb_softc* device_get_softc (int ) ;
 int smi_rmw (int ,int ,int,int,int ) ;

__attribute__((used)) static void
rtl8366rb_init(device_t dev)
{
 struct rtl8366rb_softc *sc;
 int i;

 sc = device_get_softc(dev);







 smi_rmw(dev, RTL8366_RCR,
  RTL8366_RCR_HARD_RESET,
  RTL8366_RCR_HARD_RESET, RTL_WAITOK);


 DELAY(100000);

 smi_rmw(dev, RTL8366_SGCR,
  RTL8366_SGCR_EN_VLAN | RTL8366_SGCR_EN_VLAN_4KTB,
  RTL8366_SGCR_EN_VLAN, RTL_WAITOK);

 for (i = 0; i <= 1; i++)
  sc->vid[i] = (i + 1) | ETHERSWITCH_VID_VALID;

 smi_rmw(dev, RTL8366_VMCR(RTL8366_VMCR_MU_REG, 0),
  (1 << 0), 0, RTL_WAITOK);

 smi_rmw(dev, RTL8366_VMCR(RTL8366_VMCR_MU_REG, 1),
  ((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_MEMBER_SHIFT)
   | ((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_UNTAG_SHIFT),
  ((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_MEMBER_SHIFT
   | ((1 << 0) << RTL8366_VMCR_MU_UNTAG_SHIFT)),
  RTL_WAITOK);

 smi_rmw(dev, RTL8366_PVCR_REG(0),
  RTL8366_PVCR_VAL(0, RTL8366_PVCR_PORT_MASK),
  RTL8366_PVCR_VAL(0, 1), RTL_WAITOK);
}
