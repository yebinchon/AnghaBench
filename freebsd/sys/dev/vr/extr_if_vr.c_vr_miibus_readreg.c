
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vr_softc {int vr_dev; } ;
typedef int device_t ;


 int CSR_READ_1 (struct vr_softc*,int ) ;
 int CSR_READ_2 (struct vr_softc*,int ) ;
 int CSR_WRITE_1 (struct vr_softc*,int ,int) ;
 int DELAY (int) ;
 int VR_MIIADDR ;
 int VR_MIICMD ;
 int VR_MIICMD_READ_ENB ;
 int VR_MIIDATA ;
 int VR_MII_TIMEOUT ;
 int VR_SETBIT (struct vr_softc*,int ,int) ;
 struct vr_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int) ;

__attribute__((used)) static int
vr_miibus_readreg(device_t dev, int phy, int reg)
{
 struct vr_softc *sc;
 int i;

 sc = device_get_softc(dev);


 CSR_WRITE_1(sc, VR_MIIADDR, reg);
 VR_SETBIT(sc, VR_MIICMD, VR_MIICMD_READ_ENB);

 for (i = 0; i < VR_MII_TIMEOUT; i++) {
  DELAY(1);
  if ((CSR_READ_1(sc, VR_MIICMD) & VR_MIICMD_READ_ENB) == 0)
   break;
 }
 if (i == VR_MII_TIMEOUT)
  device_printf(sc->vr_dev, "phy read timeout %d:%d\n", phy, reg);

 return (CSR_READ_2(sc, VR_MIIDATA));
}
