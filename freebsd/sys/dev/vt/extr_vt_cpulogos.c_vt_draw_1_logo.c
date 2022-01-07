
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vt_axis_t ;
struct vt_device {int dummy; } ;





 unsigned char* vt_beastie2_vga16 ;
 unsigned char* vt_beastie_vga16 ;
 int vt_draw_2_vga16_px (struct vt_device*,scalar_t__,scalar_t__,unsigned char const) ;
 unsigned int vt_logo_sprite_height ;
 unsigned int vt_logo_sprite_width ;
 unsigned char* vt_orb_vga16 ;
 int vt_splash_cpu_style ;

__attribute__((used)) static void
vt_draw_1_logo(struct vt_device *vd, vt_axis_t top, vt_axis_t left)
{
 const unsigned char rle_sent = 0x16, *data;
 unsigned int xy, run, runcolor, i;

 switch (vt_splash_cpu_style) {
 case 130:
  data = vt_beastie2_vga16;
  break;
 case 128:
  data = vt_orb_vga16;
  break;
 case 129:

 default:
  data = vt_beastie_vga16;
  break;
 }


 for (i = 0, xy = 0; xy < vt_logo_sprite_height * vt_logo_sprite_width;) {
  if (data[i] == rle_sent) {
   runcolor = data[i + 1];
   run = data[i + 2];

   for (; run; run--, xy += 2)
    vt_draw_2_vga16_px(vd,
        left + (xy % vt_logo_sprite_width),
        top + (xy / vt_logo_sprite_width),
        runcolor);

   i += 3;
  } else {
   vt_draw_2_vga16_px(vd, left + (xy % vt_logo_sprite_width),
       top + (xy / vt_logo_sprite_width), data[i]);

   i++;
   xy += 2;
  }
 }
}
