
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vr_softc {int dummy; } ;


 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 int CSR_WRITE_4 (struct vr_softc*,int ,int ) ;
 int VR_CAMCTL ;
 int VR_CAMCTL_ENA ;
 int VR_CAMCTL_MCAST ;
 int VR_CAMCTL_VLAN ;
 int VR_CAMMASK ;
 int VR_MCAST_CAM ;

__attribute__((used)) static void
vr_cam_mask(struct vr_softc *sc, uint32_t mask, int type)
{

 if (type == VR_MCAST_CAM)
  CSR_WRITE_1(sc, VR_CAMCTL, VR_CAMCTL_ENA | VR_CAMCTL_MCAST);
 else
  CSR_WRITE_1(sc, VR_CAMCTL, VR_CAMCTL_ENA | VR_CAMCTL_VLAN);
 CSR_WRITE_4(sc, VR_CAMMASK, mask);
 CSR_WRITE_1(sc, VR_CAMCTL, 0);
}
