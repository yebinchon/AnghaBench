
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vi_mem_model; int vi_depth; int vi_planes; } ;
struct TYPE_5__ {scalar_t__ va_type; int va_line_width; scalar_t__ va_crtc_addr; TYPE_1__ va_info; int va_mode; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int u_char ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ KD_EGA ;
 scalar_t__ KD_VGA ;



 int* get_mode_param (int ) ;
 int howmany (int,int) ;
 int outb (scalar_t__,int) ;
 int rounddown (int,int) ;

__attribute__((used)) static int
set_line_length(video_adapter_t *adp, int pixel)
{
    u_char *mp;
    int ppw;
    int bpl;
    int count;

    if ((adp->va_type != KD_VGA) && (adp->va_type != KD_EGA))
 return ENODEV;
    mp = get_mode_param(adp->va_mode);
    if (mp == ((void*)0))
 return EINVAL;

    switch (adp->va_info.vi_mem_model) {
    case 129:
 ppw = 16/(adp->va_info.vi_depth/adp->va_info.vi_planes);
 count = howmany(pixel, ppw)/2;
 bpl = (howmany(pixel, ppw)/2)*4;
 break;
    case 130:
 count = (pixel + 7)/8;
 bpl = rounddown(pixel + 7, 8);
 break;
    case 128:
 count = (pixel + 7)/8;
 bpl = (pixel + 7)/8;
 break;
    default:
 return ENODEV;
    }

    if (mp[10 + 0x17] & 0x40)
 count *= 2;
    outb(adp->va_crtc_addr, 0x13);
    outb(adp->va_crtc_addr + 1, count);
    adp->va_line_width = bpl;

    return 0;
}
