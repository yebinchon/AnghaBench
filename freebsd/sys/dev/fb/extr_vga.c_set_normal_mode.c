
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ va_crtc_addr; } ;
typedef TYPE_1__ video_adapter_t ;
typedef int u_char ;


 int ATC ;
 int GDCIDX ;
 int GDCREG ;
 scalar_t__ MONO_CRTC ;
 int TSIDX ;
 int TSREG ;
 int inb (scalar_t__) ;
 int outb (int ,int) ;
 int outw (int ,int) ;
 int splhigh () ;
 int splx (int) ;

__attribute__((used)) static void
set_normal_mode(video_adapter_t *adp, u_char *buf)
{
    int s;

    s = splhigh();


    inb(adp->va_crtc_addr + 6);
    outb(ATC, 0x10); outb(ATC, buf[5]);
    inb(adp->va_crtc_addr + 6);
    outb(ATC, 0x20);
    outw(TSIDX, 0x0002 | (buf[0] << 8));
    outw(TSIDX, 0x0004 | (buf[1] << 8));



    outw(GDCIDX, 0x0004 | (buf[2] << 8));
    outw(GDCIDX, 0x0005 | (buf[3] << 8));
    if (adp->va_crtc_addr == MONO_CRTC)
        outw(GDCIDX, 0x0006 | (((buf[4] & 0x03) | 0x08)<<8));
    else
        outw(GDCIDX, 0x0006 | (((buf[4] & 0x03) | 0x0c)<<8));


    splx(s);
}
