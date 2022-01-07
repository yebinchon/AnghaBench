
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_type; int va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int ENODEV ;





 int TSIDX ;
 int TSREG ;




 int inb (int ) ;
 int outb (int ,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static int
vga_blank_display(video_adapter_t *adp, int mode)
{
    u_char val;
    int s;

    s = splhigh();
    switch (adp->va_type) {
    case 132:
 switch (mode) {
 case 128:
 case 129:
     outb(TSIDX, 0x01);
     val = inb(TSREG);
     outb(TSIDX, 0x01);
     outb(TSREG, val | 0x20);
     outb(adp->va_crtc_addr, 0x17);
     val = inb(adp->va_crtc_addr + 1);
     outb(adp->va_crtc_addr + 1, val & ~0x80);
     break;
 case 131:
     outb(TSIDX, 0x01);
     val = inb(TSREG);
     outb(TSIDX, 0x01);
     outb(TSREG, val | 0x20);
     break;
 case 130:
     outb(TSIDX, 0x01);
     val = inb(TSREG);
     outb(TSIDX, 0x01);
     outb(TSREG, val & 0xDF);
     outb(adp->va_crtc_addr, 0x17);
     val = inb(adp->va_crtc_addr + 1);
     outb(adp->va_crtc_addr + 1, val | 0x80);
     break;
 }
 break;

    case 135:

 splx(s);
 return ENODEV;

    case 136:
 switch (mode) {
 case 128:
 case 129:
 case 131:
     outb(adp->va_crtc_addr + 4, 0x25);
     break;
 case 130:
     outb(adp->va_crtc_addr + 4, 0x2d);
     break;
 }
 break;

    case 133:
    case 134:
 switch (mode) {
 case 128:
 case 129:
 case 131:
     outb(adp->va_crtc_addr + 4, 0x21);
     break;
 case 130:
     outb(adp->va_crtc_addr + 4, 0x29);
     break;
 }
 break;
    default:
 break;
    }
    splx(s);

    return 0;
}
