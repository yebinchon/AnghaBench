
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vi_mode; int vi_buffer_size; int vi_window_size; int vi_planes; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_7__ {int va_flags; int va_initial_mode; int va_type; } ;
typedef TYPE_2__ video_adapter_t ;


 int EINVAL ;
 int ENXIO ;
 int EOT ;
 int NA ;
 int V_ADP_COLOR ;
 int V_ADP_MODECHANGE ;
 TYPE_1__* bios_vmode ;
 int * get_mode_param (int) ;
 int map_gen_mode_num (int ,int,int) ;
 int vga_init_done ;

__attribute__((used)) static int
vga_get_info(video_adapter_t *adp, int mode, video_info_t *info)
{
    int i;

    if (!vga_init_done)
 return ENXIO;

    mode = map_gen_mode_num(adp->va_type, adp->va_flags & V_ADP_COLOR, mode);

    if (adp->va_flags & V_ADP_MODECHANGE) {




 if (get_mode_param(mode) == ((void*)0))
     return EINVAL;
    } else

    {





 if (mode != adp->va_initial_mode)
     return EINVAL;
    }

    for (i = 0; bios_vmode[i].vi_mode != EOT; ++i) {
 if (bios_vmode[i].vi_mode == NA)
     continue;
 if (mode == bios_vmode[i].vi_mode) {
     *info = bios_vmode[i];

     info->vi_buffer_size = info->vi_window_size*info->vi_planes;
     return 0;
 }
    }
    return EINVAL;
}
