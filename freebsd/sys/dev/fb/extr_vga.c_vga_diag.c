
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {scalar_t__ vi_mode; } ;
typedef TYPE_1__ video_info_t ;
struct TYPE_15__ {int va_flags; int va_initial_mode; scalar_t__ va_type; int va_unit; char* va_name; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int u_char ;
struct TYPE_13__ {int * regs; } ;
struct TYPE_12__ {int * regs; } ;


 int BIOS_PADDRTOVADDR (int) ;
 int ENXIO ;
 scalar_t__ EOT ;
 scalar_t__ KD_EGA ;
 scalar_t__ KD_VGA ;
 scalar_t__ NA ;
 int RTC_EQUIPMENT ;
 int VGA_DRIVER_NAME ;
 int V_ADP_MODECHANGE ;
 int V_MODE_PARAM_SIZE ;
 TYPE_11__ adpstate ;
 TYPE_10__ adpstate2 ;
 TYPE_1__* bios_vmode ;
 int dump_buffer (int *,int) ;
 int fb_dump_adp_info (int ,TYPE_2__*,int) ;
 int fb_dump_mode_info (int ,TYPE_2__*,TYPE_1__*,int) ;
 int * get_mode_param (scalar_t__) ;
 int printf (char*,...) ;
 int readb (int ) ;
 int readw (int ) ;
 int rows_offset ;
 int rtcin (int ) ;
 int vga_get_info (TYPE_2__*,int,TYPE_1__*) ;
 int vga_init_done ;
 int * video_mode_ptr ;
 int video_mode_ptr2 ;

__attribute__((used)) static int
vga_diag(video_adapter_t *adp, int level)
{
    u_char *mp;





    if (!vga_init_done)
 return ENXIO;
    fb_dump_adp_info(VGA_DRIVER_NAME, adp, level);
    if ((adp->va_type != KD_EGA) && (adp->va_type != KD_VGA))
 return 0;

    if (video_mode_ptr == ((void*)0))
 printf("vga%d: %s: WARNING: video mode switching is not "
        "fully supported on this adapter\n",
        adp->va_unit, adp->va_name);

    if (level <= 0)
 return 0;

    if (adp->va_type == KD_VGA) {
 printf("VGA parameters upon power-up\n");
 dump_buffer(adpstate.regs, sizeof(adpstate.regs));
 printf("VGA parameters in BIOS for mode %d\n", adp->va_initial_mode);
 dump_buffer(adpstate2.regs, sizeof(adpstate2.regs));
    }

    mp = get_mode_param(adp->va_initial_mode);
    if (mp == ((void*)0))
 return 0;
    printf("EGA/VGA parameters to be used for mode %d\n", adp->va_initial_mode);
    dump_buffer(mp, V_MODE_PARAM_SIZE);

    return 0;
}
