
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_18__ ;


struct TYPE_22__ {int y; int x; } ;
typedef TYPE_2__ video_display_start_t ;
struct TYPE_23__ {int * transparent; int blue; int green; int red; int count; int index; } ;
typedef TYPE_3__ video_color_palette_t ;
struct TYPE_21__ {int y; int x; } ;
struct TYPE_24__ {int va_line_width; int va_mode; TYPE_1__ va_disp_start; } ;
typedef TYPE_4__ video_adapter_t ;
typedef int u_long ;
typedef int u_int ;
struct fbcmap {int blue; int green; int red; int count; int index; } ;
typedef int off_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_20__ {int (* ioctl ) (TYPE_4__*,int,scalar_t__) ;} ;


 int ENODEV ;







 int VESA_MODE (int ) ;
 int get_palette (TYPE_4__*,int ,int ,int ,int ,int ,int *) ;
 TYPE_18__* prevvidsw ;
 int printf (char*,int) ;
 int set_palette (TYPE_4__*,int ,int ,int ,int ,int ,int *) ;
 int stub1 (TYPE_4__*,int,scalar_t__) ;
 int stub2 (TYPE_4__*,int,scalar_t__) ;
 int stub3 (TYPE_4__*,int,scalar_t__) ;
 int stub4 (TYPE_4__*,int,scalar_t__) ;
 int stub5 (TYPE_4__*,int,scalar_t__) ;
 int stub6 (TYPE_4__*,int,scalar_t__) ;
 int stub7 (TYPE_4__*,int,scalar_t__) ;
 int stub8 (TYPE_4__*,int,scalar_t__) ;
 int stub9 (TYPE_4__*,int,scalar_t__) ;
 TYPE_4__* vesa_adp ;
 int vesa_bios_set_line_length (int ,int*,int *) ;
 int vesa_bios_set_start (int ,int ) ;
 int vesa_set_origin (TYPE_4__*,int ) ;

__attribute__((used)) static int
vesa_ioctl(video_adapter_t *adp, u_long cmd, caddr_t arg)
{
 int bytes;

 if (adp != vesa_adp)
  return ((*prevvidsw->ioctl)(adp, cmd, arg));

 switch (cmd) {
 case 128:
  if (!VESA_MODE(adp->va_mode))
   return (*prevvidsw->ioctl)(adp, cmd, arg);
  return (vesa_set_origin(adp, *(off_t *)arg) ? ENODEV : 0);

 case 131:
  if (!VESA_MODE(adp->va_mode))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  if (vesa_bios_set_start(((video_display_start_t *)arg)->x,
     ((video_display_start_t *)arg)->y))
   return (ENODEV);
  adp->va_disp_start.x = ((video_display_start_t *)arg)->x;
  adp->va_disp_start.y = ((video_display_start_t *)arg)->y;
  return (0);

 case 130:
  if (!VESA_MODE(adp->va_mode))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  if (vesa_bios_set_line_length(*(u_int *)arg, &bytes, ((void*)0)))
   return (ENODEV);
  adp->va_line_width = bytes;



  return (0);

 case 132:
  if (get_palette(adp, ((video_color_palette_t *)arg)->index,
    ((video_color_palette_t *)arg)->count,
    ((video_color_palette_t *)arg)->red,
    ((video_color_palette_t *)arg)->green,
    ((video_color_palette_t *)arg)->blue,
    ((video_color_palette_t *)arg)->transparent))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  return (0);


 case 129:
  if (set_palette(adp, ((video_color_palette_t *)arg)->index,
    ((video_color_palette_t *)arg)->count,
    ((video_color_palette_t *)arg)->red,
    ((video_color_palette_t *)arg)->green,
    ((video_color_palette_t *)arg)->blue,
    ((video_color_palette_t *)arg)->transparent))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  return (0);

 case 134:
  if (get_palette(adp, ((struct fbcmap *)arg)->index,
    ((struct fbcmap *)arg)->count,
    ((struct fbcmap *)arg)->red,
    ((struct fbcmap *)arg)->green,
    ((struct fbcmap *)arg)->blue, ((void*)0)))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  return (0);

 case 133:
  if (set_palette(adp, ((struct fbcmap *)arg)->index,
    ((struct fbcmap *)arg)->count,
    ((struct fbcmap *)arg)->red,
    ((struct fbcmap *)arg)->green,
    ((struct fbcmap *)arg)->blue, ((void*)0)))
   return ((*prevvidsw->ioctl)(adp, cmd, arg));
  return (0);

 default:
  return ((*prevvidsw->ioctl)(adp, cmd, arg));
 }
}
