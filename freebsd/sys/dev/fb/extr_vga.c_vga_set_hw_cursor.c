
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vi_flags; int vi_width; } ;
struct TYPE_5__ {scalar_t__ va_crtc_addr; TYPE_1__ va_info; } ;
typedef TYPE_2__ video_adapter_t ;
typedef int u_int16_t ;


 int ENODEV ;
 int ENXIO ;
 int V_INFO_GRAPHICS ;
 int outb (scalar_t__,int) ;
 int spltty () ;
 int splx (int) ;
 int vga_init_done ;

__attribute__((used)) static int
vga_set_hw_cursor(video_adapter_t *adp, int col, int row)
{
    u_int16_t off;
    int s;

    if (!vga_init_done)
 return ENXIO;

    if ((col == -1) && (row == -1)) {
 off = -1;
    } else {
 if (adp->va_info.vi_flags & V_INFO_GRAPHICS)
     return ENODEV;
 off = row*adp->va_info.vi_width + col;
    }

    s = spltty();
    outb(adp->va_crtc_addr, 14);
    outb(adp->va_crtc_addr + 1, off >> 8);
    outb(adp->va_crtc_addr, 15);
    outb(adp->va_crtc_addr + 1, off & 0x00ff);
    splx(s);

    return 0;
}
