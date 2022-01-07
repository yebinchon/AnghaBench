
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_dev; } ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int ) ;
 int DELAY (int) ;
 int VGE_MIIADDR ;
 int VGE_MIIADDR_SWMPL ;
 int VGE_MIICMD ;
 int VGE_MIICMD_MAUTO ;
 int VGE_MIISTS ;
 int VGE_MIISTS_IIDL ;
 int VGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
vge_miipoll_start(struct vge_softc *sc)
{
 int i;



 CSR_WRITE_1(sc, VGE_MIICMD, 0);
 CSR_WRITE_1(sc, VGE_MIIADDR, VGE_MIIADDR_SWMPL);

 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(1);
  if (CSR_READ_1(sc, VGE_MIISTS) & VGE_MIISTS_IIDL)
   break;
 }

 if (i == VGE_TIMEOUT) {
  device_printf(sc->vge_dev, "failed to idle MII autopoll\n");
  return;
 }



 CSR_WRITE_1(sc, VGE_MIICMD, VGE_MIICMD_MAUTO);



 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(1);
  if ((CSR_READ_1(sc, VGE_MIISTS) & VGE_MIISTS_IIDL) == 0)
   break;
 }

 if (i == VGE_TIMEOUT)
  device_printf(sc->vge_dev, "failed to start MII autopoll\n");
}
