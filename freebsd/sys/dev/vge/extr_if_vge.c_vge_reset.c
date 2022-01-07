
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_dev; } ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int DELAY (int) ;
 int VGE_CR1_SOFTRESET ;
 int VGE_CR3_STOP_FORCE ;
 int VGE_CRS1 ;
 int VGE_CRS3 ;
 int VGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
vge_reset(struct vge_softc *sc)
{
 int i;

 CSR_WRITE_1(sc, VGE_CRS1, VGE_CR1_SOFTRESET);

 for (i = 0; i < VGE_TIMEOUT; i++) {
  DELAY(5);
  if ((CSR_READ_1(sc, VGE_CRS1) & VGE_CR1_SOFTRESET) == 0)
   break;
 }

 if (i == VGE_TIMEOUT) {
  device_printf(sc->vge_dev, "soft reset timed out\n");
  CSR_WRITE_1(sc, VGE_CRS3, VGE_CR3_STOP_FORCE);
  DELAY(2000);
 }

 DELAY(5000);
}
