
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int vge_dev; } ;


 int CSR_READ_1 (struct vge_softc*,int ) ;
 int CSR_WRITE_1 (struct vge_softc*,int ,int) ;
 int DELAY (int) ;
 int VGE_MIBCSR ;
 int VGE_MIBCSR_CLR ;
 int VGE_MIBCSR_FREEZE ;
 int VGE_TIMEOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
vge_stats_clear(struct vge_softc *sc)
{
 int i;

 CSR_WRITE_1(sc, VGE_MIBCSR,
     CSR_READ_1(sc, VGE_MIBCSR) | VGE_MIBCSR_FREEZE);
 CSR_WRITE_1(sc, VGE_MIBCSR,
     CSR_READ_1(sc, VGE_MIBCSR) | VGE_MIBCSR_CLR);
 for (i = VGE_TIMEOUT; i > 0; i--) {
  DELAY(1);
  if ((CSR_READ_1(sc, VGE_MIBCSR) & VGE_MIBCSR_CLR) == 0)
   break;
 }
 if (i == 0)
  device_printf(sc->vge_dev, "MIB clear timed out!\n");
 CSR_WRITE_1(sc, VGE_MIBCSR, CSR_READ_1(sc, VGE_MIBCSR) &
     ~VGE_MIBCSR_FREEZE);
}
