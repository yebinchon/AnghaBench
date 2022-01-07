
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vesa_mode {int v_modeattr; int v_bpp; int v_planes; int v_width; int v_linbpscanline; int v_bpscanline; } ;
struct TYPE_2__ {int v_version; } ;


 int V_MODEGRAPHICS ;
 int V_MODELFB ;
 TYPE_1__* vesa_adp_info ;

__attribute__((used)) static int
vesa_get_bpscanline(struct vesa_mode *vmode)
{
 int bpsl;

 if ((vmode->v_modeattr & V_MODEGRAPHICS) != 0) {

  switch (vmode->v_bpp / vmode->v_planes) {
  case 1:
   bpsl = vmode->v_width / 8;
   break;
  case 2:
   bpsl = vmode->v_width / 4;
   break;
  case 4:
   bpsl = vmode->v_width / 2;
   break;
  default:
   bpsl = vmode->v_width * ((vmode->v_bpp + 7) / 8);
   bpsl /= vmode->v_planes;
   break;
  }


  if ((vmode->v_modeattr & V_MODELFB) != 0 &&
      vesa_adp_info->v_version >= 0x0300 &&
      vmode->v_linbpscanline > bpsl)
   return (vmode->v_linbpscanline);


  if (vmode->v_bpscanline < bpsl)
   return (bpsl);
 }

 return (vmode->v_bpscanline);
}
