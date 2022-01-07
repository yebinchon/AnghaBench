
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ va_type; scalar_t__ va_crtc_addr; int va_mode; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 scalar_t__ ATC ;
 scalar_t__ GDCIDX ;
 scalar_t__ GDCREG ;
 scalar_t__ KD_VGA ;
 scalar_t__ TSIDX ;
 scalar_t__ TSREG ;
 int* get_mode_param (int ) ;
 int inb (scalar_t__) ;
 int outb (scalar_t__,int) ;
 int outw (scalar_t__,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void
set_font_mode(video_adapter_t *adp, u_char *buf)
{
    u_char *mp;
    int s;

    s = splhigh();


    if (adp->va_type == KD_VGA) {
 outb(TSIDX, 0x02); buf[0] = inb(TSREG);
 outb(TSIDX, 0x04); buf[1] = inb(TSREG);
 outb(GDCIDX, 0x04); buf[2] = inb(GDCREG);
 outb(GDCIDX, 0x05); buf[3] = inb(GDCREG);
 outb(GDCIDX, 0x06); buf[4] = inb(GDCREG);
 inb(adp->va_crtc_addr + 6);
 outb(ATC, 0x10); buf[5] = inb(ATC + 1);
    } else {




 mp = get_mode_param(adp->va_mode);
 buf[0] = mp[5 + 0x02 - 1];
 buf[1] = mp[5 + 0x04 - 1];
 buf[2] = mp[55 + 0x04];
 buf[3] = mp[55 + 0x05];
 buf[4] = mp[55 + 0x06];
 buf[5] = mp[35 + 0x10];
    }


    inb(adp->va_crtc_addr + 6);
    outb(ATC, 0x10); outb(ATC, buf[5] & ~0x01);
    inb(adp->va_crtc_addr + 6);
    outb(ATC, 0x20);
    outw(TSIDX, 0x0402);
    outw(TSIDX, 0x0704);



    outw(GDCIDX, 0x0204);
    outw(GDCIDX, 0x0005);
    outw(GDCIDX, 0x0406);


    splx(s);
}
