
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {scalar_t__ vge_camidx; } ;


 int CSR_CLRBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_SETBIT_1 (struct vge_softc*,int ,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,scalar_t__,int) ;
 scalar_t__ VGE_CAM0 ;
 scalar_t__ VGE_CAMADDR ;
 int VGE_CAMADDR_AVSEL ;
 int VGE_CAMADDR_ENABLE ;
 int VGE_CAMCTL ;
 int VGE_CAMCTL_PAGESEL ;
 int VGE_PAGESEL_CAMMASK ;
 int VGE_PAGESEL_MAR ;

__attribute__((used)) static void
vge_cam_clear(struct vge_softc *sc)
{
 int i;







 CSR_CLRBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_PAGESEL_CAMMASK);
 CSR_WRITE_1(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE);
 for (i = 0; i < 8; i++)
  CSR_WRITE_1(sc, VGE_CAM0 + i, 0);



 CSR_WRITE_1(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE|VGE_CAMADDR_AVSEL|0);
 for (i = 0; i < 8; i++)
  CSR_WRITE_1(sc, VGE_CAM0 + i, 0);

 CSR_WRITE_1(sc, VGE_CAMADDR, 0);
 CSR_CLRBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_PAGESEL_MAR);

 sc->vge_camidx = 0;
}
