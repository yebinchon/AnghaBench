
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_dev; } ;
typedef int device_t ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_SETBIT_1 (struct vge_softc*,int ,int) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int CSR_WRITE_2 (struct vge_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;
 int VGE_MIIADDR ;
 int VGE_MIICMD ;
 int VGE_MIICMD_WCMD ;
 int VGE_MIIDATA ;
 int VGE_TIMEOUT ;
 struct vge_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int vge_miipoll_start (struct vge_softc*) ;
 int vge_miipoll_stop (struct vge_softc*) ;

__attribute__((used)) static int
vge_miibus_writereg(device_t dev, int phy, int reg, int data)
{
 struct vge_softc *sc;
 int i, rval = 0;

 sc = device_get_softc(dev);

 vge_miipoll_stop(sc);


 CSR_WRITE_1(sc, VGE_MIIADDR, reg);


 CSR_WRITE_2(sc, VGE_MIIDATA, data);


 CSR_SETBIT_1(sc, VGE_MIICMD, VGE_MIICMD_WCMD);


 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(1);
  if ((CSR_READ_1(sc, VGE_MIICMD) & VGE_MIICMD_WCMD) == 0)
   break;
 }

 if (i == VGE_TIMEOUT) {
  device_printf(sc->vge_dev, "MII write timed out\n");
  rval = EIO;
 }

 vge_miipoll_start(sc);

 return (rval);
}
