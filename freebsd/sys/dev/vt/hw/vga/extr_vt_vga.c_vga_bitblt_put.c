
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_long ;
typedef int term_color_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int vga_curbg; } ;


 int MEM_READ1 (struct vga_softc*,int ) ;
 int MEM_WRITE1 (struct vga_softc*,int ,int) ;
 int vga_setfg (struct vt_device*,int ) ;

__attribute__((used)) static inline void
vga_bitblt_put(struct vt_device *vd, u_long dst, term_color_t color,
    uint8_t v)
{
 struct vga_softc *sc = vd->vd_softc;


 if (v != 0x00) {
  vga_setfg(vd, color);







  if (v != 0xff) {
   MEM_READ1(sc, dst);


   sc->vga_curbg = 0xff;
  }
  MEM_WRITE1(sc, dst, v);
 }
}
