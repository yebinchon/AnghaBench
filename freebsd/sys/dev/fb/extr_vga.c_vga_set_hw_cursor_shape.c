
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_type; int va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;


 int ENXIO ;





 int outb (int ,int) ;
 int spltty () ;
 int splx (int) ;
 int vga_init_done ;

__attribute__((used)) static int
vga_set_hw_cursor_shape(video_adapter_t *adp, int base, int height,
   int celsize, int blink)
{
    int s;

    if (!vga_init_done)
 return ENXIO;

    s = spltty();
    switch (adp->va_type) {
    case 128:
    case 132:
    case 129:
    case 130:
    default:
 if (height <= 0) {

     outb(adp->va_crtc_addr, 10);
     outb(adp->va_crtc_addr + 1, 32);
     outb(adp->va_crtc_addr, 11);
     outb(adp->va_crtc_addr + 1, 0);
 } else {
     outb(adp->va_crtc_addr, 10);
     outb(adp->va_crtc_addr + 1, celsize - base - height);
     outb(adp->va_crtc_addr, 11);
     outb(adp->va_crtc_addr + 1, celsize - base - 1);
 }
 break;
    case 131:
 if (height <= 0) {

     outb(adp->va_crtc_addr, 10);
     outb(adp->va_crtc_addr + 1, celsize);
     outb(adp->va_crtc_addr, 11);
     outb(adp->va_crtc_addr + 1, 0);
 } else {
     outb(adp->va_crtc_addr, 10);
     outb(adp->va_crtc_addr + 1, celsize - base - height);
     outb(adp->va_crtc_addr, 11);
     outb(adp->va_crtc_addr + 1, celsize - base);
 }
 break;
    }
    splx(s);

    return 0;
}
