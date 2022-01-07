
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct vt_device {struct vga_softc* vd_softc; } ;
struct vga_softc {int dummy; } ;
typedef int plans ;


 int MEM_WRITE1 (struct vga_softc*,unsigned int,int) ;
 int REG_WRITE1 (struct vga_softc*,int ,int) ;
 int VGA_SEQ_ADDRESS ;
 int VGA_SEQ_DATA ;
 int VGA_SEQ_MAP_MASK ;
 unsigned int VT_VGA_WIDTH ;
 int memset (int*,int ,int) ;
 int vga_setwmode (struct vt_device*,int ) ;

__attribute__((used)) static void
vga_bitblt_pixels_block_ncolors(struct vt_device *vd, const uint8_t *masks,
    unsigned int x, unsigned int y, unsigned int height)
{
 unsigned int i, j, plan, color, offset;
 struct vga_softc *sc;
 uint8_t mask, plans[height * 4];

 sc = vd->vd_softc;

 memset(plans, 0, sizeof(plans));
 for (i = 0; i < height; ++i) {
  for (color = 0; color < 16; ++color) {
   mask = masks[i * 16 + color];
   if (mask == 0x00)
    continue;

   for (j = 0; j < 8; ++j) {
    if (!((mask >> (7 - j)) & 0x1))
     continue;


    for (plan = 0; plan < 4; ++plan)
     plans[i * 4 + plan] |=
         ((color >> plan) & 0x1) << (7 - j);
   }
  }
 }





 vga_setwmode(vd, 0);

 REG_WRITE1(sc, VGA_SEQ_ADDRESS, VGA_SEQ_MAP_MASK);
 for (plan = 0; plan < 4; ++plan) {

  REG_WRITE1(sc, VGA_SEQ_DATA, 1 << plan);


  for (i = 0; i < height; ++i) {
   offset = (VT_VGA_WIDTH * (y + i) + x) / 8;
   MEM_WRITE1(sc, offset, plans[i * 4 + plan]);
  }
 }
}
