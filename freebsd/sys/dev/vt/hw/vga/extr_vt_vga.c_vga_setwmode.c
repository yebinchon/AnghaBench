
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int vga_wmode; } ;


 int REG_WRITE1 (struct vga_softc*,int ,int) ;
 int VGA_GC_ADDRESS ;
 int VGA_GC_DATA ;
 int VGA_GC_MODE ;
 int VGA_SEQ_ADDRESS ;
 int VGA_SEQ_DATA ;
 int VGA_SEQ_MAP_MASK ;
 int VGA_SEQ_MM_EM0 ;
 int VGA_SEQ_MM_EM1 ;
 int VGA_SEQ_MM_EM2 ;
 int VGA_SEQ_MM_EM3 ;

__attribute__((used)) static inline void
vga_setwmode(struct vt_device *vd, int wmode)
{
 struct vga_softc *sc = vd->vd_softc;

 if (sc->vga_wmode == wmode)
  return;

 REG_WRITE1(sc, VGA_GC_ADDRESS, VGA_GC_MODE);
 REG_WRITE1(sc, VGA_GC_DATA, wmode);
 sc->vga_wmode = wmode;

 switch (wmode) {
 case 3:

  REG_WRITE1(sc, VGA_SEQ_ADDRESS, VGA_SEQ_MAP_MASK);
  REG_WRITE1(sc, VGA_SEQ_DATA, VGA_SEQ_MM_EM3 | VGA_SEQ_MM_EM2 |
      VGA_SEQ_MM_EM1 | VGA_SEQ_MM_EM0);
  break;
 }
}
