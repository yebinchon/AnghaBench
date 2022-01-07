
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vi_flags; int vi_width; } ;
struct TYPE_5__ {TYPE_1__ va_info; scalar_t__ va_crtc_addr; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int u_int16_t ;


 int ENODEV ;
 int ENXIO ;
 int V_INFO_GRAPHICS ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;
 int spltty () ;
 int splx (int) ;
 int vga_init_done ;

__attribute__((used)) static int
vga_read_hw_cursor(video_adapter_t *adp, int *col, int *row)
{
    u_int16_t off;
    int s;

    if (!vga_init_done)
 return ENXIO;

    if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
 return ENODEV;

    s = spltty();
    outb(adp->va_crtc_addr, 14);
    off = inb(adp->va_crtc_addr + 1);
    outb(adp->va_crtc_addr, 15);
    off = (off << 8) | inb(adp->va_crtc_addr + 1);
    splx(s);

    *row = off / adp->va_info.vi_width;
    *col = off % adp->va_info.vi_width;

    return 0;
}
