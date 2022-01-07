
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int COLOR_FORMAT_RGB ;
 int vt_generate_cons_palette (int *,int ,int,int,int,int,int,int ) ;

__attribute__((used)) static int
vt_fb_init_cmap(uint32_t *cmap, int depth)
{

 switch (depth) {
 case 8:
  return (vt_generate_cons_palette(cmap, COLOR_FORMAT_RGB,
      0x7, 5, 0x7, 2, 0x3, 0));
 case 15:
  return (vt_generate_cons_palette(cmap, COLOR_FORMAT_RGB,
      0x1f, 10, 0x1f, 5, 0x1f, 0));
 case 16:
  return (vt_generate_cons_palette(cmap, COLOR_FORMAT_RGB,
      0x1f, 11, 0x3f, 5, 0x1f, 0));
 case 24:
 case 32:
  return (vt_generate_cons_palette(cmap, COLOR_FORMAT_RGB,
      0xff, 16, 0xff, 8, 0xff, 0));
 default:
  return (1);
 }
}
