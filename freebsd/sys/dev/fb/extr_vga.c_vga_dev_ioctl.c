
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int y; int x; } ;
typedef TYPE_2__ video_display_start_t ;
struct TYPE_13__ {int * transparent; int blue; int green; int red; int count; int index; } ;
typedef TYPE_3__ video_color_palette_t ;
struct TYPE_11__ {int vi_depth; int vi_width; int vi_height; } ;
struct TYPE_14__ {int va_buffer_size; TYPE_1__ va_info; int va_type; } ;
typedef TYPE_4__ video_adapter_t ;
typedef int u_long ;
typedef int u_int ;
struct fbtype {int fb_depth; int fb_cmsize; int fb_size; int fb_width; int fb_height; int fb_type; } ;
struct fbcmap {int blue; int green; int red; int count; int index; } ;
typedef scalar_t__ caddr_t ;


 int ENODEV ;
 int fb_commonioctl (TYPE_4__*,int,scalar_t__) ;
 int fb_type (int ) ;
 int get_palette (TYPE_4__*,int ,int ,int ,int ,int ,int *) ;
 int set_display_start (TYPE_4__*,int ,int ) ;
 int set_line_length (TYPE_4__*,int ) ;
 int set_palette (TYPE_4__*,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
vga_dev_ioctl(video_adapter_t *adp, u_long cmd, caddr_t arg)
{
    switch (cmd) {
    case 132:
 *(u_int *)arg = 0;
 return 0;

    case 128:
 return ENODEV;

    case 131:
 return (set_display_start(adp,
      ((video_display_start_t *)arg)->x,
        ((video_display_start_t *)arg)->y)
  ? ENODEV : 0);

    case 130:
 return (set_line_length(adp, *(u_int *)arg) ? ENODEV : 0);

    case 133:
 return get_palette(adp, ((video_color_palette_t *)arg)->index,
      ((video_color_palette_t *)arg)->count,
      ((video_color_palette_t *)arg)->red,
      ((video_color_palette_t *)arg)->green,
      ((video_color_palette_t *)arg)->blue,
      ((video_color_palette_t *)arg)->transparent);

    case 129:
 return set_palette(adp, ((video_color_palette_t *)arg)->index,
      ((video_color_palette_t *)arg)->count,
      ((video_color_palette_t *)arg)->red,
      ((video_color_palette_t *)arg)->green,
      ((video_color_palette_t *)arg)->blue,
      ((video_color_palette_t *)arg)->transparent);

    case 135:
 ((struct fbtype *)arg)->fb_type = fb_type(adp->va_type);
 ((struct fbtype *)arg)->fb_height = adp->va_info.vi_height;
 ((struct fbtype *)arg)->fb_width = adp->va_info.vi_width;
 ((struct fbtype *)arg)->fb_depth = adp->va_info.vi_depth;
 if ((adp->va_info.vi_depth <= 1) || (adp->va_info.vi_depth > 8))
     ((struct fbtype *)arg)->fb_cmsize = 0;
 else
     ((struct fbtype *)arg)->fb_cmsize = 1 << adp->va_info.vi_depth;
 ((struct fbtype *)arg)->fb_size = adp->va_buffer_size;
 return 0;

    case 136:
 return get_palette(adp, ((struct fbcmap *)arg)->index,
      ((struct fbcmap *)arg)->count,
      ((struct fbcmap *)arg)->red,
      ((struct fbcmap *)arg)->green,
      ((struct fbcmap *)arg)->blue, ((void*)0));

    case 134:
 return set_palette(adp, ((struct fbcmap *)arg)->index,
      ((struct fbcmap *)arg)->count,
      ((struct fbcmap *)arg)->red,
      ((struct fbcmap *)arg)->green,
      ((struct fbcmap *)arg)->blue, ((void*)0));

    default:
 return fb_commonioctl(adp, cmd, arg);
    }
}
