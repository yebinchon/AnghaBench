
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vge_softc {int vge_camidx; int vge_dev; } ;


 int CSR_CLRBIT_1 (struct vge_softc*,scalar_t__,int ) ;
 int CSR_READ_1 (struct vge_softc*,scalar_t__) ;
 int CSR_SETBIT_1 (struct vge_softc*,scalar_t__,int) ;
 int CSR_WRITE_1 (struct vge_softc*,scalar_t__,int) ;
 int DELAY (int) ;
 int EIO ;
 int ENOSPC ;
 int ETHER_ADDR_LEN ;
 scalar_t__ VGE_CAM0 ;
 scalar_t__ VGE_CAMADDR ;
 int VGE_CAMADDR_ENABLE ;
 scalar_t__ VGE_CAMCTL ;
 int VGE_CAMCTL_PAGESEL ;
 int VGE_CAMCTL_WRITE ;
 int VGE_CAM_MAXADDRS ;
 int VGE_PAGESEL_CAMDATA ;
 int VGE_PAGESEL_CAMMASK ;
 int VGE_PAGESEL_MAR ;
 int VGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
vge_cam_set(struct vge_softc *sc, uint8_t *addr)
{
 int i, error = 0;

 if (sc->vge_camidx == VGE_CAM_MAXADDRS)
  return (ENOSPC);


 CSR_CLRBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_PAGESEL_CAMDATA);


 CSR_WRITE_1(sc, VGE_CAMADDR, VGE_CAMADDR_ENABLE|sc->vge_camidx);


 for (i = 0; i < ETHER_ADDR_LEN; i++)
  CSR_WRITE_1(sc, VGE_CAM0 + i, addr[i]);


 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_WRITE);


 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(1);
  if ((CSR_READ_1(sc, VGE_CAMCTL) & VGE_CAMCTL_WRITE) == 0)
   break;
 }

 if (i == VGE_TIMEOUT) {
  device_printf(sc->vge_dev, "setting CAM filter failed\n");
  error = EIO;
  goto fail;
 }


 CSR_CLRBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_PAGESEL_CAMMASK);


 CSR_SETBIT_1(sc, VGE_CAM0 + (sc->vge_camidx/8),
     1<<(sc->vge_camidx & 7));

 sc->vge_camidx++;

fail:

 CSR_WRITE_1(sc, VGE_CAMADDR, 0);
 CSR_CLRBIT_1(sc, VGE_CAMCTL, VGE_CAMCTL_PAGESEL);
 CSR_SETBIT_1(sc, VGE_CAMCTL, VGE_PAGESEL_MAR);

 return (error);
}
